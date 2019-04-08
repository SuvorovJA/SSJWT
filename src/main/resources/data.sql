-- The encrypted client_secret it `secret`
INSERT INTO oauth_client_details (client_id, client_secret, scope, authorized_grant_types, authorities, access_token_validity)
  VALUES ('clientId', '{bcrypt}$2a$10$vCXMWCn7fDZWOcLnIEhmK.74dvK1Eh8ae2WrWlhr2ETPLoxQctN4.', 'read,write', 'password,refresh_token,client_credentials', 'ROLE_CLIENT', 300);

-- The encrypted password is concatination login and `-password`
INSERT INTO users (id, username, password, enabled) VALUES (1, 'fa', '{bcrypt}$2a$10$Xlw8.MrTtmTfo7RWLNCduOmMY.xQb9ASQjJ0tsmrWcmFYOonlJ6o.', 1);
INSERT INTO users (id, username, password, enabled) VALUES (2, 'ro', '{bcrypt}$2a$10$RMGrZ.qsFA63rz9l0Ax4J.arsU1SGSa63YW1b5kINGUaohCNqNO1i', 1);
INSERT INTO users (id, username, password, enabled) VALUES (3, 'faro', '{bcrypt}$2a$10$NJniVum1fVVtBch4tk4r/O1tO8SftDoJwpHnxmhpV4rrHmun3knei', 1);

INSERT INTO authorities (username, authority) VALUES ('ro', 'ROLE_READONLY');
INSERT INTO authorities (username, authority) VALUES ('fa', 'ROLE_MODIFICATION');
INSERT INTO authorities (username, authority) VALUES ('faro', 'ROLE_READONLY');
INSERT INTO authorities (username, authority) VALUES ('faro', 'ROLE_MODIFICATION');
