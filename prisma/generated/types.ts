import type { ColumnType } from "kysely";
export type Generated<T> = T extends ColumnType<infer S, infer I, infer U>
  ? ColumnType<S, I | undefined, U>
  : ColumnType<T, T | undefined, T>;
export type Timestamp = ColumnType<Date, Date | string, Date | string>;

export type mikro_orm_migrations = {
    id: Generated<number>;
    name: string | null;
    executed_at: Generated<string | null>;
};
export type ocpi_tokens = {
    id: Generated<number>;
    valid: number;
    language: string | null;
    whitelist: string;
    issuer: string;
    visual_number: string | null;
    auth_id: string;
    type: string;
    ocpp_uid: string;
    uid: string | null;
    ocpiclientid: number;
    updatedat: string | null;
    createdat: string | null;
    last_updated: string;
    auth_member: string;
};
export type payouts = {
    id: string;
    currency: Generated<string>;
    amount: Generated<number>;
    transactionId: string;
    userId: string;
    createdAt: string;
    updatedAt: string;
};
export type users = {
    id: string;
    name: string;
    email: string;
    createdAt: string;
    updatedAt: string;
};
export type DB = {
    mikro_orm_migrations: mikro_orm_migrations;
    ocpi_tokens: ocpi_tokens;
    payouts: payouts;
    users: users;
};
