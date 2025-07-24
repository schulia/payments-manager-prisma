import { Router } from 'express';
import * as tokenController from '../controllers/token';

const router = Router();

router.get('/:id', tokenController.getOcpiTokens);
router.post('/user', tokenController.getOcpiTokensByUserEmail);

export default router;