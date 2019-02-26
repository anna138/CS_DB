CREATE OR REPLACE FUNCTION updateTicket(
/*
funcAccountID INT,
funcTickStatus TEXT,
funcSubject TEXT,
funcTickSub INT,
funcAction TEXT,
funcProblemDes TEXT,
funcGameID INT,
funcErrorCode INT default null,
funcInternalpart TEXT default null
*/
aticketStatus TEXT default 'Open', 
aproblemDescription TEXT default 'Not Provided', 
aproblemArea INT default null


	) RETURNS VOID  AS
$$

DECLARE
tempTicketID INT;
	
   BEGIN
   
		INSERT INTO ticket(ticketStatus, problemDescription, problemArea) VALUES(aticketStatus, aproblemDescription, aproblemArea)
		RETURNING ticketID into tempTicketID;
   
		UPDATE ticket SET ticketstatus = aticketStatus, problemdescription = aproblemDescription, problemarea = aproblemArea where ticketid = 99;
		/*
        INSERT INTO  ticket (transactionGameID, ticketStatus, ticketSubject)
		VALUES(funcGameID, funcTickStatus, funcSubject)
		 RETURNING ticketID into ticketidproc;
		 
        INSERT INTO  modifies_user 
		VALUES(funcAccountID, ticketidproc, current_date, funcAction);
        
		INSERT INTO troubleshooting  (ticketID, focusAreaID, problemDescription, internalpartAssociated, troubleShootingType, errorCode)
		VALUES(ticketidproc, funcTickSub, funcProblemDes, funcInternalpart, 'Software', funcErrorCode);
		*/
    END;
$$ LANGUAGE plpgsql;