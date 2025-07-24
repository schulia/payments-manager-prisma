
import { Request, Response } from 'express';
import { PrismaClient } from '../../generated/prisma'
import kyselyExtension from "prisma-extension-kysely";
import type { DB } from "../../prisma/generated/types";
import { 
  Kysely,
  SqliteAdapter, 
  SqliteIntrospector, 
  SqliteQueryCompiler 
} from 'kysely';

const prisma = new PrismaClient().$extends(
 kyselyExtension({
   kysely: (driver) =>
     new Kysely<DB>({
       dialect: {
         // This is where the magic happens!
         createDriver: () => driver,
         // SQLite-specific adapters
         createAdapter: () => new SqliteAdapter(),
         createIntrospector: (db) => new SqliteIntrospector(db),
         createQueryCompiler: () => new SqliteQueryCompiler(),
       },
       plugins: [
         // Add your favorite plugins here!
       ],
     }),
 }),
);


export const getOcpiTokens = async (req: Request, res: Response): Promise<void> => {
    const {id}  = req.params; // Assuming id is passed as a route parameter
    const numericId = parseInt(id);
    // const result = await prisma.ocpi_tokens.findUnique({
    //     where: { id: numericId }
    // });
    const query = prisma.$kysely.selectFrom('ocpi_tokens')
      .selectAll()
      .where('id', '=', numericId)  
      const result = await query.executeTakeFirst();
    console.log('token', result);
    res.status(200).json(result);
}   

const getUserDataByEmail = async (email: string) => {
  const result = await prisma.$kysely
    .selectFrom('users as u')
    .leftJoin('ocpi_tokens as ot', (join) =>
      join
        .onRef('ot.auth_id', '=', 'u.email')
    )
    .leftJoin('payouts as p', 'p.userId', 'u.id')
    .select([
      'u.id as userId',
      'u.name as user_name',
      'u.email as user_email',
      'ot.id as token_id',
      'ot.auth_id',
      'ot.auth_member',
      'ot.type as token_type',
      'ot.ocpp_uid',
      'ot.uid',
      'ot.valid as token_valid',
      'ot.issuer',
      'ot.visual_number',
      'ot.language',
      'ot.whitelist',
      'ot.last_updated as token_last_updated',
      'p.id as payout_id',
      'p.currency',
      'p.amount',
      'p.transactionId',
      'p.createdAt as payout_createdAt',
      // Window functions
      (eb) => eb.fn.count('p.id').over(ob => ob.partitionBy('u.id')).as('total_payouts_per_user'),
      (eb) => eb.fn.sum('p.amount').over(ob => ob.partitionBy('u.id')).as('total_payout_amount_per_user'),
      (eb) => eb.fn.count('ot.id').over(ob => ob.partitionBy('u.id')).as('total_tokens_per_user')
    ])
    .where((eb) => eb.and([
      eb('u.email', '=', email), // Email parameter filter
    //   eb('u.createdAt', '>=', eb.fn('datetime', ['now', '-1 year'])),
      eb.or([
        eb('ot.valid', 'is', null),
        eb('ot.valid', '=', 1)
      ]),
      eb.or([
        eb('p.amount', 'is', null),
        eb('p.amount', '>', 0)
      ])
    ]))
    .orderBy(
      'ot.last_updated', 'desc'
    )
    .execute();
    
  return result;
};

export const getOcpiTokensByUserEmail = async (req: Request, res: Response): Promise<void> => {
    const { email } = req.body; 
    console.log(email)
    try {
        const userData = await getUserDataByEmail(email);
        console.log('userData', userData);
        res.status(200).json(userData);
    } catch (error) {
        console.error('Error fetching OCPI tokens by user email:', error);
        res.status(500).json({ error: 'Failed to fetch OCPI tokens' });
    }
};

// Usage:
// const userData = await getUserDataByEmail('alice.smith@email.com');
// export const getOcpiTokensByUserEmail = async (req: Request, res: Response): Promise<void> => {
//     const { email } = req.params; 
//     //select * from ocpi_tokens ot left join users u on ot.auth_id = u.email

//     const orm = getORM(); // Get the shared instance
//     const em = orm.em.fork() as SqlEntityManager;

//     const qb =  em.createQueryBuilder(OcpiTokens, 'ot');
//   const tokens = await qb
//   .select(['ot.*', 'u.*'])
//   .join('users', 'u', { 'ot.auth_id': { $eq: { 'u.email': true } } })
//   .where({ 'u.email': email })
//   .getResult();
//     res.status(200).json(tokens);
// }