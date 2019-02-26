CREATE OR REPLACE FUNCTION createTicket(
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


CREATE OR REPLACE FUNCTION updateTicket(

aticketid INT,
aticketStatus TEXT default 'Open', 
aproblemDescription TEXT default 'Not Provided', 
aproblemArea INT default null


	) RETURNS VOID  AS
$$

   BEGIN
   
		UPDATE ticket 
		SET ticketstatus = aticketStatus, problemdescription = aproblemDescription, problemarea = aproblemArea where ticketid = aticketid;
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

CREATE OR REPLACE FUNCTION deletefocus(
	tid INT,
	focusid INT	
) RETURNS VOID AS 
$func$
	BEGIN 
		IF focusid = 4 THEN
			DELETE from account_issues where ticketID = tid;
		ELSIF focusid = 3 THEN
			DELETE from billing where ticketID = tid;
		ELSIF focusid = 2 THEN 
			DELETE from hardware_repair where ticketID = tid;
		ELSIF focusid = 1 THEN 
			DELETE from troubleshooting where ticketID = tid;
		END IF;
	
		Delete from ticket where ticketID = tid;
	END;
$func$ LANGUAGE plpgsql;
/*
CREATE OR REPLACE FUNCTION beforeupdateChat(
BEFORE UPDATE on chat FOR EACH ROW 
	declare
		timediff INT;
	
	BEGIN 
		select startdate into timediff from chat where chatid = achatid;
		select age(timediff) into timediff;
		
		return timediff;
	END;
	
$$ LANGUAGE plpgsql;
*/

CREATE OR REPLACE FUNCTION chatsdroppedZipCodeDetails(
	astartdate timestamp,
	aenddate timestamp
	) RETURNS TABLE (
ostartdate timestamp,
oenddate timestamp,
zipcode text,
totaldropped integer,
averagedropped integer,
queuetime integer,
supportcost integer)
AS
$$
   BEGIN
RETURN QUERY SELECT
	startdate,
	enddate,
	regexp_replace(address, '^.* ', '') as "Zip Code",  
	TRUNC(SUM(sessionDropped),3)::integer as "Total Dropped",
	TRUNC(AVG(sessionDropped),3)::integer as "Average Dropped",
	TRUNC(CAST(SUM(EXTRACT(EPOCH FROM (enddate - startdate))) AS INTEGER), 3)::integer as "Time in Queue",
	TRUNC((CAST(SUM(EXTRACT(EPOCH FROM (enddate - startdate))) AS INTEGER)/60)*5, 3)::integer as "Total Cost"
	FROM 
	account natural join chat where startdate >= astartdate and enddate <= aenddate
	GROUP BY address, startdate, enddate;		
   END;
$$ LANGUAGE plpgsql;

CREATE or REPLACE FUNCTION closeTicket()
	returns trigger as
$$
	begin

	if solutiondescription <> NULL then
	insert into ticket values(old.accountid, old.transactiongameid, old.transactionhardid, old.ticketid, new.status = 'CLOSED');
	end if;
	return new; 

	exception
		when others then 
		raise NOTICE 'closing ticket function of solution id -%-% has failed due to [%]', solutionid, SQLERRM;


	end;
$$ language plpgsql;






CREATE OR REPLACE FUNCTION deleteTicket(

	giventicketid INT
	
) RETURNS VOID AS 
$func$
	DECLARE 
		focusid INT;
	BEGIN 
		select problemArea into focusid from ticket where ticketID = giventicketid;
	
		Delete from ticket where ticketID = giventicketid;
			
		IF focusid = 4 THEN
			DELETE from account_issues where ticketID = giventicketid;
		ELSIF focusid = 3 THEN
			DELETE from billing where ticketID = giventicketid;
		ELSIF focusid = 2 THEN 
			DELETE from hardware_repair where ticketID = giventicketid;
		ELSIF focusid = 1 THEN 
			DELETE from troubleshooting where ticketID = giventicketid;
		END IF;

	END;
	
$func$ LANGUAGE plpgsql;


