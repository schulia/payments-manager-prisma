-- Insert mock data for users table
INSERT INTO users (id, name, email, createdAt, updatedAt) VALUES
('user_001', 'John Doe', 'john.doe@example.com', '2025-01-13 09:22:27.475 +00:00', '2025-07-16 14:30:15.123 +00:00'),
('user_002', 'Jane Smith', 'jane.smith@example.com', '2024-11-17 11:45:33.892 +00:00', '2025-07-15 08:45:22.456 +00:00'),
('user_003', 'Mike Johnson', 'mike.johnson@example.com', '2025-03-17 16:12:44.567 +00:00', '2025-07-14 19:12:33.789 +00:00'),
('user_004', 'Sarah Wilson', 'sarah.wilson@example.com', '2024-09-17 08:33:55.234 +00:00', '2025-07-17 08:22:44.012 +00:00'),
('user_005', 'David Brown', 'david.brown@example.com', '2025-04-17 13:44:12.678 +00:00', '2025-07-12 12:55:11.345 +00:00'),
('user_006', 'Lisa Garcia', 'lisa.garcia@example.com', '2024-12-17 10:55:23.901 +00:00', '2025-07-17 06:33:22.678 +00:00'),
('user_007', 'Tom Anderson', 'tom.anderson@example.com', '2025-02-17 15:11:34.123 +00:00', '2025-07-11 17:44:33.901 +00:00'),
('user_008', 'Emma Davis', 'emma.davis@example.com', '2024-10-17 12:22:45.456 +00:00', '2025-07-17 05:11:44.234 +00:00'),
('user_009', 'Chris Martinez', 'chris.martinez@example.com', '2025-05-17 09:33:56.789 +00:00', '2025-07-13 21:22:55.567 +00:00'),
('user_010', 'Amy Taylor', 'amy.taylor@example.com', '2024-08-17 14:44:07.012 +00:00', '2025-07-10 16:33:06.890 +00:00');

-- Insert mock data for ocpi_tokens table
INSERT INTO ocpi_tokens (
    id, valid, language, whitelist, issuer, visual_number, auth_id, auth_member, 
    type, ocpp_uid, uid, ocpiclientid, updatedat, createdat, last_updated
) VALUES
(1, 1, 'en', 'charging_station_001', 'ChargePoint', 'CP001', 'user_001', 'user_001', 'RFID', 'ocpp_001', 'uid_001', 1001, '2025-07-16 14:30:15.123 +00:00', '2025-06-17 09:22:27.475 +00:00', '2025-07-16 14:30:15.123 +00:00'),
(2, 1, 'en', 'charging_station_002', 'Tesla', 'TS002', 'user_002', 'user_002', 'APP', 'ocpp_002', 'uid_002', 1002, '2025-07-15 08:45:22.456 +00:00', '2025-05-17 11:45:33.892 +00:00', '2025-07-15 08:45:22.456 +00:00'),
(3, 1, 'de', 'charging_station_003', 'EVBox', 'EV003', 'user_003', 'user_003', 'RFID', 'ocpp_003', 'uid_003', 1003, '2025-07-14 19:12:33.789 +00:00', '2025-04-17 16:12:44.567 +00:00', '2025-07-14 19:12:33.789 +00:00'),
(4, 0, 'fr', 'charging_station_004', 'Ionity', 'IO004', 'user_004', 'user_004', 'CREDIT_CARD', 'ocpp_004', 'uid_004', 1004, '2025-07-13 21:22:55.567 +00:00', '2025-03-17 08:33:55.234 +00:00', '2025-07-13 21:22:55.567 +00:00'),
(5, 1, 'en', 'charging_station_005', 'ChargePoint', 'CP005', 'user_005', 'user_005', 'APP', 'ocpp_005', 'uid_005', 1005, '2025-07-12 12:55:11.345 +00:00', '2025-02-17 13:44:12.678 +00:00', '2025-07-12 12:55:11.345 +00:00'),
(6, 1, 'es', 'charging_station_006', 'Electrify America', 'EA006', 'user_006', 'user_006', 'RFID', 'ocpp_006', 'uid_006', 1006, '2025-07-11 17:44:33.901 +00:00', '2025-01-17 10:55:23.901 +00:00', '2025-07-11 17:44:33.901 +00:00'),
(7, 1, 'en', 'charging_station_007', 'Shell Recharge', 'SR007', 'user_007', 'user_007', 'APP', 'ocpp_007', 'uid_007', 1007, '2025-07-10 16:33:06.890 +00:00', '2024-12-17 15:11:34.123 +00:00', '2025-07-10 16:33:06.890 +00:00'),
(8, 0, 'nl', 'charging_station_008', 'Fastned', 'FN008', 'user_008', 'user_008', 'CONTACTLESS', 'ocpp_008', 'uid_008', 1008, '2025-07-09 15:22:17.234 +00:00', '2024-11-17 12:22:45.456 +00:00', '2025-07-09 15:22:17.234 +00:00'),
(9, 1, 'en', 'charging_station_009', 'BP Pulse', 'BP009', 'user_009', 'user_009', 'RFID', 'ocpp_009', 'uid_009', 1009, '2025-07-08 14:11:28.678 +00:00', '2024-10-17 09:33:56.789 +00:00', '2025-07-08 14:11:28.678 +00:00'),
(10, 1, 'en', 'charging_station_010', 'Enel X', 'EN010', 'user_010', 'user_010', 'APP', 'ocpp_010', 'uid_010', 1010, '2025-07-07 13:44:39.012 +00:00', '2024-09-17 14:44:07.012 +00:00', '2025-07-07 13:44:39.012 +00:00'),
(11, 1, 'en', 'charging_station_011', 'ChargePoint', 'CP011', 'user_001', 'user_001', 'RFID', 'ocpp_011', 'uid_011', 1011, '2025-07-06 12:33:50.345 +00:00', '2024-08-17 11:22:18.123 +00:00', '2025-07-06 12:33:50.345 +00:00'),
(12, 1, 'de', 'charging_station_012', 'Tesla', 'TS012', 'user_002', 'user_002', 'APP', 'ocpp_012', 'uid_012', 1012, '2025-07-05 11:22:01.678 +00:00', '2024-07-17 10:11:29.456 +00:00', '2025-07-05 11:22:01.678 +00:00'),
(13, 1, 'en', 'charging_station_013', 'EVBox', 'EV013', 'user_003', 'user_003', 'CONTACTLESS', 'ocpp_013', 'uid_013', 1013, '2025-07-04 10:11:12.901 +00:00', '2024-06-17 09:44:40.789 +00:00', '2025-07-04 10:11:12.901 +00:00'),
(14, 1, 'fr', 'charging_station_014', 'Ionity', 'IO014', 'user_004', 'user_004', 'RFID', 'ocpp_014', 'uid_014', 1014, '2025-07-03 09:55:23.234 +00:00', '2024-05-17 08:33:51.012 +00:00', '2025-07-03 09:55:23.234 +00:00'),
(15, 1, 'en', 'charging_station_015', 'Shell Recharge', 'SR015', 'user_005', 'user_005', 'APP', 'ocpp_015', 'uid_015', 1015, '2025-07-02 08:44:34.567 +00:00', '2024-04-17 07:22:02.345 +00:00', '2025-07-02 08:44:34.567 +00:00');

-- Insert mock data for payouts table
INSERT INTO payouts (id, currency, amount, transactionId, userId, createdAt, updatedAt) VALUES
('payout_001', 'EUR', 25.50, 'tx_001', 'user_001', '2025-07-16 14:30:15.123 +00:00', '2025-07-16 14:30:15.123 +00:00'),
('payout_002', 'EUR', 42.75, 'tx_002', 'user_002', '2025-07-15 08:45:22.456 +00:00', '2025-07-15 08:45:22.456 +00:00'),
('payout_003', 'USD', 38.20, 'tx_003', 'user_003', '2025-07-14 19:12:33.789 +00:00', '2025-07-14 19:12:33.789 +00:00'),
('payout_004', 'EUR', 67.80, 'tx_004', 'user_004', '2025-07-13 21:22:55.567 +00:00', '2025-07-13 21:22:55.567 +00:00'),
('payout_005', 'GBP', 29.95, 'tx_005', 'user_005', '2025-07-12 12:55:11.345 +00:00', '2025-07-12 12:55:11.345 +00:00'),
('payout_006', 'EUR', 55.40, 'tx_006', 'user_006', '2025-07-11 17:44:33.901 +00:00', '2025-07-11 17:44:33.901 +00:00'),
('payout_007', 'USD', 73.25, 'tx_007', 'user_007', '2025-07-10 16:33:06.890 +00:00', '2025-07-10 16:33:06.890 +00:00'),
('payout_008', 'EUR', 31.60, 'tx_008', 'user_008', '2025-07-09 15:22:17.234 +00:00', '2025-07-09 15:22:17.234 +00:00'),
('payout_009', 'EUR', 48.90, 'tx_009', 'user_009', '2025-07-08 14:11:28.678 +00:00', '2025-07-08 14:11:28.678 +00:00'),
('payout_010', 'USD', 62.15, 'tx_010', 'user_010', '2025-07-07 13:44:39.012 +00:00', '2025-07-07 13:44:39.012 +00:00'),
('payout_011', 'EUR', 33.75, 'tx_011', 'user_001', '2025-07-06 12:33:50.345 +00:00', '2025-07-06 12:33:50.345 +00:00'),
('payout_012', 'EUR', 89.50, 'tx_012', 'user_002', '2025-07-05 11:22:01.678 +00:00', '2025-07-05 11:22:01.678 +00:00'),
('payout_013', 'USD', 45.80, 'tx_013', 'user_003', '2025-07-04 10:11:12.901 +00:00', '2025-07-04 10:11:12.901 +00:00'),
('payout_014', 'EUR', 52.30, 'tx_014', 'user_004', '2025-07-03 09:55:23.234 +00:00', '2025-07-03 09:55:23.234 +00:00'),
('payout_015', 'GBP', 41.25, 'tx_015', 'user_005', '2025-07-02 08:44:34.567 +00:00', '2025-07-02 08:44:34.567 +00:00'),
('payout_016', 'EUR', 28.90, 'tx_016', 'user_006', '2025-07-01 07:33:45.890 +00:00', '2025-07-01 07:33:45.890 +00:00'),
('payout_017', 'USD', 76.40, 'tx_017', 'user_007', '2025-06-30 06:22:56.123 +00:00', '2025-06-30 06:22:56.123 +00:00'),
('payout_018', 'EUR', 39.85, 'tx_018', 'user_008', '2025-06-29 05:11:07.456 +00:00', '2025-06-29 05:11:07.456 +00:00'),
('payout_019', 'EUR', 58.70, 'tx_019', 'user_009', '2025-06-28 04:44:18.789 +00:00', '2025-06-28 04:44:18.789 +00:00'),
('payout_020', 'USD', 64.45, 'tx_020', 'user_010', '2025-06-27 03:33:29.012 +00:00', '2025-06-27 03:33:29.012 +00:00');

-- Verification queries to check the inserted data
SELECT 'Users' as table_name, COUNT(*) as record_count FROM users
UNION ALL
SELECT 'OCPI Tokens' as table_name, COUNT(*) as record_count FROM ocpi_tokens
UNION ALL
SELECT 'Payouts' as table_name, COUNT(*) as record_count FROM payouts;

-- Sample join to verify relationships
SELECT 
    u.name,
    COUNT(DISTINCT ot.id) as token_count,
    COUNT(DISTINCT p.id) as payout_count,
    SUM(p.amount) as total_payout_amount
FROM users u
LEFT JOIN ocpi_tokens ot ON (ot.auth_id = u.id OR ot.auth_member = u.id OR ot.uid = u.id)
LEFT JOIN payouts p ON p.userId = u.id
GROUP BY u.id, u.name
ORDER BY u.name;




-- for prisma 
INSERT INTO users (id, email, name, createdAt, updatedAt) VALUES
('user_001', 'alice.smith@email.com', 'Alice Smith', '2025-07-20 10:15:30', '2025-07-20 10:15:30'),
('user_002', 'bob.johnson@email.com', 'Bob Johnson', '2025-07-20 11:22:45', '2025-07-20 11:22:45'),
('user_003', 'carol.white@email.com', 'Carol White', '2025-07-20 12:30:15', '2025-07-20 12:30:15'),
('user_004', 'david.brown@email.com', 'David Brown', '2025-07-20 13:45:22', '2025-07-20 13:45:22'),
('user_005', 'emma.davis@email.com', 'Emma Davis', '2025-07-20 14:20:18', '2025-07-20 14:20:18');

-- Insert Payouts (references users)
INSERT INTO payouts (id, currency, amount, transactionId, userId, createdAt, updatedAt) VALUES
('payout_001', 'EUR', 125.50, 'tx_001', 'user_001', '2025-07-20 15:10:25', '2025-07-20 15:10:25'),
('payout_002', 'USD', 89.75, 'tx_002', 'user_002', '2025-07-20 16:25:30', '2025-07-20 16:25:30'),
('payout_003', 'EUR', 234.80, 'tx_003', 'user_003', '2025-07-20 17:35:15', '2025-07-20 17:35:15'),
('payout_004', 'GBP', 67.25, 'tx_004', 'user_004', '2025-07-20 18:40:42', '2025-07-20 18:40:42'),
('payout_005', 'EUR', 156.90, 'tx_005', 'user_005', '2025-07-20 19:55:33', '2025-07-20 19:55:33');

-- Insert OCPI Tokens (auth_id matches user emails)
INSERT INTO ocpi_tokens (valid, language, whitelist, issuer, visual_number, auth_id, type, ocpp_uid, uid, ocpiclientid, updatedat, createdat, last_updated, auth_member) VALUES
(1, 'en', 'ALWAYS', 'ChargePoint Networks', '4532-1234-5678-9012', 'alice.smith@email.com', 'RFID', 'CP001-ALICE', 'alice_uid_001', 1001, '2025-07-20 10:30:45', '2025-07-20 10:15:30', '2025-07-20 10:30:45', 'premium'),
(1, 'de', 'BLOCKED', 'EVBox Solutions', '4532-2345-6789-0123', 'bob.johnson@email.com', 'RFID', 'EVB002-BOB', 'bob_uid_002', 1002, '2025-07-20 11:45:20', '2025-07-20 11:22:45', '2025-07-20 11:45:20', 'standard'),
(0, 'fr', 'ALLOWED', 'Tesla Supercharger', '4532-3456-7890-1234', 'carol.white@email.com', 'APP', 'TSC003-CAROL', 'carol_uid_003', 1003, '2025-07-20 12:50:30', '2025-07-20 12:30:15', '2025-07-20 12:50:30', 'premium'),
(1, 'es', 'ALWAYS', 'Ionity Network', '4532-4567-8901-2345', 'david.brown@email.com', 'RFID', 'ION004-DAVID', 'david_uid_004', 1004, '2025-07-20 14:10:15', '2025-07-20 13:45:22', '2025-07-20 14:10:15', 'standard'),
(1, 'en', 'ALLOWED', 'Shell Recharge', '4532-5678-9012-3456', 'emma.davis@email.com', 'APP', 'SHL005-EMMA', 'emma_uid_005', 1005, '2025-07-20 14:35:50', '2025-07-20 14:20:18', '2025-07-20 14:35:50', 'premium');