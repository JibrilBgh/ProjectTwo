--initial inserts for lookup tables
INSERT INTO ROLE_TYPE VALUES(1,'Employee');
INSERT INTO ROLE_TYPE VALUES(2,'Manager');
/
INSERT INTO REIMBURSEMENT_TYPE VALUES(1,'Food');
INSERT INTO REIMBURSEMENT_TYPE VALUES(2,'Travel');
INSERT INTO REIMBURSEMENT_TYPE VALUES(3,'Housing');
INSERT INTO REIMBURSEMENT_TYPE VALUES(4,'Other');
/
INSERT INTO STATUS_TYPE VALUES(1,'Pending');
INSERT INTO STATUS_TYPE VALUES(2,'Approved');
INSERT INTO STATUS_TYPE VALUES(3,'Denied');
/
--Test Entries--
INSERT INTO ERS_USER(ERS_FN,ERS_LN,ERS_USERNAME,ERS_PASSWORD,RT_ID,ERS_EMAIL) 
VALUES ('Coolius','McGee','username','password',1,'coolkid@gmail.com');
INSERT INTO ERS_USER(ERS_FN,ERS_LN,ERS_USERNAME,ERS_PASSWORD,RT_ID,ERS_EMAIL) 
VALUES ('Coolius2','McGee2','username2','password2',1,'coolkid2@gmail.com');
INSERT INTO ERS_USER(ERS_FN,ERS_LN,ERS_USERNAME,ERS_PASSWORD,RT_ID,ERS_EMAIL) 
VALUES ('A','Manager','musername','mpassword',2,'imamanager@gmail.com');
INSERT INTO ERS_USER(ERS_FN,ERS_LN,ERS_USERNAME,ERS_PASSWORD,RT_ID,ERS_EMAIL) 
VALUES ('Magic','Johnson','magic','johnson',2,'magic@gmail.com');
INSERT INTO REIMBURSEMENT (ERS_ID,RBT_ID,RB_AMOUNT,RB_DESCRIPTION) 
VALUES(1,1,150.25,'splurged at McDonalds');
/
SELECT * FROM REIMBURSEMENT WHERE ERS_ID = 1;
SELECT * FROM ERS_USER WHERE RT_ID = 1;
SELECT * FROM REIMBURSEMENT;
SELECT * FROM ERS_USER WHERE ERS_USERNAME = 'username';
SELECT RT_NAME FROM ROLE_TYPE WHERE RT_ID = 2;
/
COMMIT;
/