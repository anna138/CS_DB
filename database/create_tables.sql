\c apoon
CREATE TABLE account(
   
   accountID      SERIAL    PRIMARY KEY,
   emailAdd       TEXT      NOT NULL UNIQUE,
   phoneNumber              BIGINT,
   password       TEXT	    NOT NULL,
   name           TEXT		NOT NULL,
   address		  TEXT		NOT NULL,
   region		  TEXT		NOT NULL,
   accountType    TEXT,
   accountStatus  TEXT,
   
   CONSTRAINT account_type CHECK (accountType = ANY( ARRAY['Master','Sub','Other'])),
   CONSTRAINT account_status CHECK (accountStatus = ANY( ARRAY['Active','Suspended','Banned','Other']))
);

CREATE TABLE agent(
	agentTransfersID    INT        DEFAULT NULL,	
    agentID             SERIAL     PRIMARY KEY,
    agentTier           INTEGER    DEFAULT 1,
    agentName           CHAR(100)  NOT NULL,
    emailAdd            TEXT       NOT NULL UNIQUE,
	password            TEXT	   NOT NULL
  
);

CREATE TABLE chat(
    chatID                 SERIAL      PRIMARY KEY, 
	accountID              INT,
	ticketID               INT,
    chatTranscript         TEXT,
	startDate              TIMESTAMP   DEFAULT current_timestamp,
	endDate                TIMESTAMP,
	sessionDropped          INT         DEFAULT 0, /*default 1 for Completed 0 for incompleted*/
	ticketChatBack         INTEGER,
	customerFeedback	   INTEGER
);

CREATE TABLE answered_by(	
	agentID	        INT,
	chatID          INT,
	aStartTime 	    TIMESTAMP	 DEFAULT current_timestamp,
	aEndTime		TIMESTAMP    DEFAULT NULL,
	
	CONSTRAINT fk_answered_by_agent FOREIGN KEY (agentID) REFERENCES agent(agentID),
    CONSTRAINT fk_answered_by_chat FOREIGN KEY (chatID) REFERENCES chat(chatID)
	
);

CREATE TABLE game(
   gameID               SERIAL      PRIMARY KEY,
   gameName             TEXT        NOT NULL,
   gameSoftwareVersion	REAL        DEFAULT 1.0,
   gameMSRP				REAL		NOT NULL,
   gamePublisher		TEXT	    NOT NULL,
   gamePlatform			TEXT		
	  
);

CREATE TABLE game_copy(
   gameID               INT,
   accountID	        INT,
   transactionGameID    SERIAL      PRIMARY KEY,
   softwareVersion      REAL        DEFAULT 1.0,
   distributionType     TEXT	    NOT NULL,
   purchaseDate		    DATE	    NOT NULL, 
   purchasePrice		REAL		NOT NULL,

	CONSTRAINT dist_type CHECK (distributionType = ANY( ARRAY['Digital','Physical'])),
	CONSTRAINT fk_account_id FOREIGN KEY (accountID)  REFERENCES account(accountID),
    CONSTRAINT fk_game_id FOREIGN KEY (gameID)  REFERENCES game(gameID)
);

CREATE TABLE hardware(
    deviceModelID     SERIAL        PRIMARY KEY,
	deviceName        TEXT          NOT NULL,
	hardFirmware	  REAL          DEFAULT 1.0,
    hardwareMSRP      REAL          NOT NULL
);

CREATE TABLE hardware_copy(
	deviceModelID       INT,
	accountID		    INT,
    transactionHardID   SERIAL            PRIMARY KEY,
    dateWarranty        DATE              NOT NULL,
	firmware		    REAL              DEFAULT 1.0,
    macAddress          VARCHAR(12)       NOT NULL      UNIQUE,
    userSerialNumber    INTEGER           NOT NULL      UNIQUE, 
    purchaseDate        DATE              NOT NULL,
    dateLastUsed	    DATE		      NOT NULL,
    purchasePrice       REAL              NOT NULL,

    CONSTRAINT fk_hardware_account FOREIGN KEY (accountID) REFERENCES account(accountID),
    CONSTRAINT fk_hard_id FOREIGN KEY (deviceModelID)  REFERENCES hardware(deviceModelID),
    CONSTRAINT ck_hardware_serial CHECK(userSerialNumber > 0),
	CONSTRAINT ck_date CHECK(dateLastUsed > purchaseDate)
);


CREATE TABLE ticket(	
	transactionGameID     INT,
	transactionHardID     INT,
    ticketID              SERIAL       PRIMARY KEY,
	ticketStatus          TEXT,
	problemDescription    TEXT,
	problemArea           INT,

	CONSTRAINT ticket_status CHECK (ticketStatus = ANY( ARRAY['Open','Closed','Other'])),
	CONSTRAINT fk_ticket_game FOREIGN KEY (transactionGameID) REFERENCES game_copy(transactionGameID),
    CONSTRAINT fk_ticket_hardware FOREIGN KEY (transactionHardID) REFERENCES hardware_copy(transactionHardID)
);


CREATE TABLE solution(
   solutionID        SERIAL    PRIMARY KEY,
   ticketID	         INT,
   dateCreated       DATE      default current_timestamp 
);


CREATE TABLE account_issues(
   accountStatus	TEXT,
   accountIssue		TEXT,
   solutionProvided TEXT,
 
   CONSTRAINT account_status CHECK (accountStatus = ANY( ARRAY['Active','Suspended','Banned','Other'])),
   CONSTRAINT solutionProvided CHECK (solutionProvided = ANY( ARRAY['Retrieved Account', 'Sent Email', 'No Action', 'Changed Email']))
   
)INHERITS (solution);

CREATE TABLE billing(
   refundType		        TEXT,
   refundTypeRequested		TEXT,
   solutionProvided         TEXT,
   
   CONSTRAINT refund_type CHECK (refundType = ANY( ARRAY['Credit Card','PayPal','None','Store Credit'])),
   CONSTRAINT refund_type_requested CHECK (refundTypeRequested = ANY( ARRAY['Credit Card','PayPal','None','Store Credit']))   
)INHERITS (solution);

CREATE TABLE hardware_repair(
   solutionProvided		TEXT		NOT NULL,
   warrantyAssociated		TEXT,
   repairNotes	TEXT,
   
   CONSTRAINT solutionProvided CHECK (solutionProvided = ANY( ARRAY['Sent Console Replacement', 'Sent Controller Replacement','Replaced HDD','Replaced Disk Drive','Fixed Wiring', 'Cannot Service']))
)INHERITS (solution);

CREATE TABLE troubleshooting( 
   solutionProvided		    TEXT		  NOT NULL,
   internalPartAssociated		TEXT,
   troubleshootingType		    TEXT,
   errorCode	   INT, 
   
   CONSTRAINT troubleshooting_type CHECK (troubleshootingType = ANY( ARRAY['Referred to Third Party','HDD Replacement', 'Firmware Update', 'Reinstallation','Restarted Device', 'Sent to Service Center', 'Referred to Internet Service Provider', 'Fixed Internet Connection']))
)INHERITS (solution);




  
