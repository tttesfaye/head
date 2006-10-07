DROP TABLE IF EXISTS FUND_CODE;

CREATE TABLE FUND_CODE (
  FUNDCODE_ID SMALLINT AUTO_INCREMENT NOT NULL,
  FUNDCODE_VALUE VARCHAR(50) NOT NULL,
  PRIMARY KEY(FUNDCODE_ID)
)
ENGINE=InnoDB CHARACTER SET utf8;

ALTER TABLE FUND DROP FOREIGN KEY FUND_GLCODE;
ALTER TABLE FUND DROP  GLCODE_ID,ADD FUNDCODE_ID SMALLINT NOT NULL;
ALTER TABLE FUND ADD FOREIGN KEY (FUNDCODE_ID) REFERENCES FUND_CODE(FUNDCODE_ID) ON DELETE NO ACTION ON UPDATE NO ACTION; 

ALTER TABLE CUSTOMER_DETAIL ADD POVERTY_STATUS INTEGER NULL;
ALTER TABLE CUSTOMER_DETAIL ADD FOREIGN KEY (POVERTY_STATUS) REFERENCES LOOKUP_VALUE(LOOKUP_ID) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE CLIENT_INITIAL_SAVINGS_OFFERING (
  CLIENT_OFFERING_ID INTEGER AUTO_INCREMENT NOT NULL,
  CUSTOMER_ID INTEGER NOT NULL,
  PRD_OFFERING_ID SMALLINT NOT NULL,
  PRIMARY KEY(CLIENT_OFFERING_ID),
  FOREIGN KEY(CUSTOMER_ID)
    REFERENCES CUSTOMER(CUSTOMER_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(PRD_OFFERING_ID)
    REFERENCES PRD_OFFERING(PRD_OFFERING_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
)ENGINE=InnoDB CHARACTER SET utf8;

ALTER TABLE SCHEDULED_TASKS MODIFY COLUMN DESCRIPTION VARCHAR(500);

CREATE TABLE LOAN_ARREARS_AGING (
  ID INTEGER AUTO_INCREMENT NOT NULL,
  ACCOUNT_ID INTEGER NOT NULL,
  CUSTOMER_ID INTEGER NOT NULL,
  CUSTOMER_NAME VARCHAR(200),  
  PARENT_CUSTOMER_ID INTEGER NULL,
  OFFICE_ID SMALLINT NOT NULL,
  DAYS_IN_ARREARS SMALLINT NOT NULL,
  OVERDUE_PRINCIPAL DECIMAL(10,3),
  OVERDUE_PRINCIPAL_CURRENCY_ID SMALLINT,
  OVERDUE_INTEREST DECIMAL(10,3),
  OVERDUE_INTEREST_CURRENCY_ID SMALLINT,
  OVERDUE_BALANCE DECIMAL(10,3),  
  OVERDUE_BALANCE_CURRENCY_ID SMALLINT,  
  UNPAID_PRINCIPAL DECIMAL(10,3),
  UNPAID_PRINCIPAL_CURRENCY_ID SMALLINT,
  UNPAID_INTEREST DECIMAL(10,3),
  UNPAID_INTEREST_CURRENCY_ID SMALLINT,
  UNPAID_BALANCE DECIMAL(10,3),
  UNPAID_BALANCE_CURRENCY_ID SMALLINT,
  PRIMARY KEY(ID),
  FOREIGN KEY(ACCOUNT_ID)
    REFERENCES ACCOUNT(ACCOUNT_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(CUSTOMER_ID)
    REFERENCES CUSTOMER(CUSTOMER_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(PARENT_CUSTOMER_ID)
    REFERENCES CUSTOMER(CUSTOMER_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(OFFICE_ID)
    REFERENCES OFFICE(OFFICE_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(OVERDUE_PRINCIPAL_CURRENCY_ID)
    REFERENCES CURRENCY(CURRENCY_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(OVERDUE_INTEREST_CURRENCY_ID)
    REFERENCES CURRENCY(CURRENCY_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(OVERDUE_BALANCE_CURRENCY_ID)
    REFERENCES CURRENCY(CURRENCY_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(UNPAID_PRINCIPAL_CURRENCY_ID)
    REFERENCES CURRENCY(CURRENCY_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(UNPAID_INTEREST_CURRENCY_ID)
    REFERENCES CURRENCY(CURRENCY_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
      FOREIGN KEY(UNPAID_BALANCE_CURRENCY_ID)
    REFERENCES CURRENCY(CURRENCY_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION            
)ENGINE=InnoDB CHARACTER SET utf8;