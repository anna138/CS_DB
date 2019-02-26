
/*

Repair Accounts 

*/

								/*Account #1 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account11@yahoo.com', 5105555555, 'repairaccount1', 'Jane Doe', '123 Fake Street, Bakersfield CA, 93311', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Erick Dee', 'agent11@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(11,11,'A', '2018-2-10 08:54:55', '2018-2-10 09:00:10', 1);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('11', '11', '2018-2-10 08:54:55', '2018-2-10 09:00:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Console overheating', '2');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(11,'2018-02-28 2:15:55');
/*Repair*/
INSERT INTO hardware_repair(ticketID,solutionID,dateCreated , solutionProvided, warrantyAssociated,repairNotes)
VALUES(11,11, '2018-02-28 2:15:55', 'Sent Console Replacement', 'Out of Warranty', 'Motherboard corrupted');

/*
INSERT INTO hardware_copy(dateWarranty, firmware, macAddress, userSerialNumber, purchaseDate, dateLastUsed, purchasePrice)
VALUES( );*/

								/*Account #2 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account12@yahoo.com', 5104444444, 'repairaccount2', 'John Doe', '456 Fake Street, Bakersfield CA, 93311', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Sammy Wich', 'agent12@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(12,12,'A', '2018-3-30 07:54:55', '2018-3-30 08:00:10', 3);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('12', '12', '2018-3-30 07:54:55', '2018-3-30 08:00:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Console overheating', '2');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(12,'2018-03-03 3:15:55');
/*Repair*/
INSERT INTO hardware_repair(ticketID,solutionID, dateCreated, solutionProvided, warrantyAssociated, repairNotes)
VALUES(12,12, '2018-03-03 3:15:55', 'Sent Console Replacement', 'Out of Warranty', 'Motherboard corrupted');

								/*Account #3 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account13@yahoo.com', 5103333333, 'repairaccount3', 'Sally Smith', '123 New Riders Street, San Francisco CA, 94546', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Walter True', 'agent13@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(13,13,'A', '2018-02-02 08:34:55', '2018-02-02 08:56:10', 4);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('13', '13', '2018-02-02 08:34:55', '2018-02-02 08:56:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Console overheating', '2');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(13,'2018-02-03 3:12:55');
/*Repair*/
INSERT INTO hardware_repair(ticketID,solutionID, dateCreated, solutionProvided, warrantyAssociated, repairNotes)
VALUES(13,13,'2018-02-03 3:12:55','Sent Console Replacement', 'Out of Warranty', 'Motherboard corrupted');

								/*Account #4 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account14@yahoo.com', 5102222222, 'repairaccount4', 'Smith Dong', '3602 Coolidge Street, Oakland CA, 94602', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(2,'Queenie Tu', 'agent14@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(14,14,'A', '2018-11-01 08:14:55', '2018-11-01 08:20:30', 1);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('14', '14', '2018-11-01 08:14:55', '2018-11-01 08:20:30');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Controllers are not pairing', '2');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(14,'2018-11-03 6:23:55');
/*Repair*/
INSERT INTO hardware_repair(ticketID,solutionID, dateCreated, solutionProvided, warrantyAssociated, repairNotes)
VALUES(14,14,'2018-11-03 6:23:55','Sent Controller Replacement', 'In Warranty', 'Wires destroyed');

								/*Account #5 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account15@yahoo.com', 5101119999, 'repairaccount5', 'Doug Dottler', '123 Fake Street, Los Angeles CA, 92315', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'James Truong', 'agent15@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(15,15,'A', '2018-08-15 08:54:55', '2018-08-15 08:56:10', 4);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('15', '15', '2018-08-15 08:54:55', '2018-08-15 08:56:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Controllers are not pairing', '2');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(15,'2018-10-03 02:15:55');
/*Repair*/
INSERT INTO hardware_repair(ticketID,solutionID, dateCreated, solutionProvided, warrantyAssociated, repairNotes)
VALUES(15,15,'2018-10-03 02:15:55','Sent Controller Replacement', 'In Warranty', 'Water Damage');


								/*Account #6 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account16@gmail.com', 5102224444, 'repairaccount6', 'Jamie Ham', '123 Fake Street, Seattle WA, 64511', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(2,'Stuart Man', 'agent16@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(16,16,'A', '2018-11-30 08:54:55', '2018-11-30 08:56:10', 2);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('16', '16', '2018-06-30 09:40:55', '2018-06-30 09:23:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Console has blue rings of death', '2');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(16,'2018-07-03 09:45:55');
/*Repair*/
INSERT INTO hardware_repair(ticketID,solutionID, dateCreated, solutionProvided, warrantyAssociated, repairNotes)
VALUES(16,16,'2018-07-03 09:45:55', 'Replaced HDD', 'Out of Warranty', 'HDD corrupted');

								/*Account #7 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account17@gmail.com', 5108886666, 'repairaccount7', 'Anna Dear', '123 La Jolla Street, San Diego CA, 92211', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Gam My', 'agent17@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(17,17,'A', '2018-5-12 05:54:55', '2018-5-12 05:56:10', 5);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('17', '17', '2018-5-12 05:54:55', '2018-5-12 05:56:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Console has blue rings of death', '2');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(17,'2018-5-13 8:15:55');
/*Repair*/
INSERT INTO hardware_repair(ticketID, solutionID, dateCreated, solutionProvided, warrantyAssociated, repairNotes)
VALUES(17,17,'2018-5-13 8:15:55', 'Replaced HDD', 'Out of Warranty', 'HDD corrupted');

								/*Account #8 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account18@gmail.com', 5104443322, 'repairaccount8', 'Henry Feng', '123 Bakers Lane, Bakersfield CA, 93311', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Oscar Bleu', 'agent18@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(18,18,'A', '2018-11-30 07:43:55', '2018-11-30 07:56:10', 1);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('18', '18', '2018-11-30 07:43:55', '2018-11-30 07:56:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Console overheating', '2');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(18,'2018-12-03 6:15:55');
/*Repair*/
INSERT INTO hardware_repair(ticketID, solutionID, dateCreated,solutionProvided, warrantyAssociated, repairNotes)
VALUES(18,18,'2018-12-03 6:15:55' , 'Sent Console Replacement', 'Out of Warranty',  'Motherboard damaged');
 
								/*Account #9*/
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account19@gmail.com', 5106666666, 'repairaccount9', 'Stewart Jay', '34632 Fowler Street, San Diego CA, 92213', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Manny Beer', 'agent19@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(19,19,'A', '2018-04-03 06:54:55', '2018-04-03 07:32:10', 7);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('19', '19', '2018-04-03 06:54:55', '2018-04-03 07:32:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Console port failure', '2');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(19,'2018-04-30 2:15:55');
/*Repair*/
INSERT INTO hardware_repair(solutionID,ticketID , dateCreated, solutionProvided, warrantyAssociated,repairNotes)
VALUES(19,19, '2018-04-30 2:15:55', 'Sent Console Replacement', 'Out of Warranty', 'Port has been fried');

								/*Account #10 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account20@gmail.com', 5106677991, 'repairaccount10', 'Smith Wee', '123 Fake Street, Bakersfield CA, 93311', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Derrick Foo', 'agent20@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(20,20,'A', '2018-11-26 09:46:55', '2018-11-26 09:56:10', 2);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('20', '20', '2018-11-26 09:46:55', '2018-11-26 09:56:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Console port failure', '2');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(20,'2018-12-03 7:36:55');
/*Repair*/
INSERT INTO hardware_repair(ticketID,solutionID, dateCreated, solutionProvided, warrantyAssociated,repairNotes)
VALUES(20,20, '2018-12-03 7:36:55','Sent Console Replacement', 'Out of Warranty', 'Port has been fried');