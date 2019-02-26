
/*

Troubleshooting Accounts 

*/

								/*Account #1 Troubleshooting Happy*/
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account1@yahoo.com', 5105555555, 'repairaccount1', 'Jane Doe', '123 Fake Street, Bakersfield CA, 93311', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Susan Ng', 'agent1@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(1,1,'A', '2018-11-30 08:54:55', '2018-11-30 08:56:10', 10);
/*GAMECOPY*/
INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(1, 1, 'Physical', '2016-12-25', 40.30);

INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(2, 1, 'Digital', '2015-11-23', 25.60);

INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(3, 1, 'Digital', '2015-10-6', 20.60);

INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(4, 1, 'Digital', '2016-10-6', 5.60);
/*
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('1', '1', '2018-11-30 08:54:55', '2018-11-30 08:56:10'); */
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Game Installation Not Working', '1');
/*SOLUTION*/
INSERT INTO solution(ticketID, dateCreated)
VALUES(1, '2018-12-03 04:36:55');
/*Troubleshooting*/
INSERT INTO troubleshooting(solutionID, ticketID, dateCreated, solutionProvided, internalPartAssociated, troubleshootingType, errorCode)
VALUES(1,1,'2018-12-03 04:36:55', 'Free up memory for installation', 'HDD', 'HDD Replacement', 123); 


								/*Account #2 Medium Happy*/
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account2@yahoo.com', 5104444444, 'repairaccount2', 'John Doe', '456 Fake Street, Bakersfield CA, 93311', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Sally Ngo', 'agent2@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(2,2,'A', '2018-11-30 01:45:55', '2018-11-30 01:56:10', 6);
/*GAMECOPY*/
INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(1, 2, 'Physical', '2016-8-3', 42.30);

INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(2, 2, 'Physical', '2016-11-13', 23.60);

INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(4, 2, 'Digital', '2015-11-6', 7.60);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('2', '2', '2018-11-31 10:45:55', '2018-11-31 10:56:10'); */
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Game Installation Not Working', '1');
/*SOLUTION*/
INSERT INTO solution(ticketID, dateCreated)
VALUES(2, '2018-12-03 13:42:15');
/*Troubleshooting*/
INSERT INTO troubleshooting(solutionID, ticketID,dateCreated, solutionProvided, internalPartAssociated, troubleshootingType, errorCode)
VALUES(2, 2, '2018-12-03 13:42:15',  'Free up memory for installation', 'HDD', 'HDD Replacement', 123);

								/*Account #3 Not Happy*/
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account3@yahoo.com', 5103333333, 'repairaccount3', 'Sally Smith', '123 New Riders Street, San Francisco CA, 94546', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Sam Nguyen', 'agent3@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(3,3,'A', '2018-11-30 01:45:55', '2018-11-30 01:56:10', 2);
/*GAME COPY*/
INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(1, 3, 'Physical', '2015-04-11', 20.30);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('3', '3', '2018-10-31 10:35:55', '2011-10-31 10:56:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Downloadable Content Not Installing', '1');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(3,'2018-12-03 10:35:55');
/*Troubleshooting*/
INSERT INTO troubleshooting(solutionID, ticketID, dateCreated, solutionProvided, internalPartAssociated, troubleshootingType, errorCode)
VALUES(3,3,'2018-12-03 10:35:55', 'Connected to Internet', 'N/A', 'Fixed Internet Connection', 125);

								/*Account #4 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account4@yahoo.com', 5102222222, 'repairaccount4', 'Smith Dong', '3602 Coolidge Street, Oakland CA, 94602', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(3,'Ann Pan', 'agent4@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(4,4,'A', '2018-11-30 08:54:55', '2018-11-30 08:56:10', 10);
/*GAME COPY*/
INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(1, 4, 'Physical', '2016-12-25', 70.30);

INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(2, 4, 'Digital', '2015-11-23', 21.60);

INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(3, 4, 'Digital', '2015-10-6', 280.60);

INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(4, 4, 'Digital', '2016-10-6', 5.60);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('4', '4', '2018-10-11 13:35:55', '2011-10-11 13:40:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Missing Trophies in Game', '1');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(4,'2018-11-23 13:35:55');
/*Troubleshooting*/
INSERT INTO troubleshooting(solutionID, ticketID,dateCreated,  solutionProvided, internalPartAssociated, troubleshootingType, errorCode)
VALUES(4,4,'2018-11-23 13:35:55',  'Referred to Third Party', 'N/A', 'Referred to Third Party', 126);

								/*Account #5 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account5@yahoo.com', 5101119999, 'repairaccount5', 'Doug Dottler', '123 Fake Street, Los Angeles CA, 92315', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(3,'Garland Ano', 'agent5@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(5,5,'A', '2018-11-30 01:45:55', '2018-11-30 01:56:10', 10);
/*GAME COPY*/
INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(1, 5, 'Physical', '2016-12-25', 45.30);
INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(4, 5, 'Digital', '2017-1-16', 0.0);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('5', '5', '2018-01-09 1:35:55', '2011-1-9 1:40:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Game Stuck in Load', '1');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(5,'2018-03-03 13:35:55');
/*Troubleshooting*/
INSERT INTO troubleshooting(solutionID, ticketID, dateCreated,solutionProvided, internalPartAssociated, troubleshootingType, errorCode)
VALUES(5,5,'2018-03-03 13:35:55','Connected to Internet', 'N/A', 'Referred to Internet Service Provider', 125);

								/*Account #6 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account6@gmail.com', 5102224444, 'repairaccount6', 'Jamie Ham', '123 Fake Street, Seattle WA, 64511', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(3,'Jojo Garlic', 'agent6@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(6,6,'A', '2018-11-30 08:54:55', '2018-11-30 08:56:10', 10);
/*GAME COPY*/
INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(1, 6, 'Physical', '2016-3-1', 56.30);

INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(2, 6, 'Digital', '2015-11-24', 30.60);

INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(3, 6, 'Physical', '2016-1-6', 3.60);

INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(4, 6, 'Digital', '2015-05-26', 12.60);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('6', '6', '2018-1-10 2:30:55', '2011-1-10 2:42:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Game Installation Not Working', '1');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(6,'2018-03-03 12:25:04');
/*Troubleshooting*/
INSERT INTO troubleshooting(solutionID, ticketID, dateCreated, solutionProvided, internalPartAssociated, troubleshootingType, errorCode)
VALUES(6, 6,'2018-03-03 12:25:04', 'Free up memory for installation', 'HDD', 'HDD Replacement', 123);

								/*Account #7 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account7@gmail.com', 5108886666, 'repairaccount7', 'Anna Dear', '123 La Jolla Street, San Diego CA, 92211', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(2,'Janice Woo', 'agent7@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(7,7,'A', '2018-1-9 12:05:55', '2018-1-9 12:07:10', 10);
/*GAME COPY */
INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(1, 7, 'Physical', '2016-3-1', 56.30);
INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(2, 7, 'Digital', '2015-11-24', 30.60);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('7', '7', '2018-1-9 12:05:55', '2011-1-9 12:07:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Firmware Download is Stuck', '1');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(7,'2018-02-14 12:05:55');
/*Troubleshooting*/
INSERT INTO troubleshooting(ticketID, solutionID, dateCreated,solutionProvided, internalPartAssociated, troubleshootingType, errorCode)
VALUES(7,7,'2018-02-14 12:05:55', 'Used external storage for firmware', 'N/A', 'Firmware Update', 124);

								/*Account #8 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account8@gmail.com', 5104443322, 'repairaccount8', 'Henry Feng', '123 Bakers Lane, Bakersfield CA, 93311', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'July Fall', 'agent8@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(8,8,'A', '2018-11-30 01:45:55', '2018-11-30 01:56:10', 10);
/*GAME COPY*/
INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(4, 5, 'Digital', '2017-1-16', 0.0);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('8', '8', '2018-1-9 1:35:55', '2011-1-9 1:40:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Firmware Download is Stuck', '1');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(8,'2018-12-03 2:15:55');
/*Troubleshooting*/
INSERT INTO troubleshooting(ticketID, solutionID, dateCreated,solutionProvided, internalPartAssociated, troubleshootingType, errorCode)
VALUES(8,8, '2018-12-03 2:15:55','Used external storage for firmware', 'N/A', 'Firmware Update', 124);

								/*Account #9*/
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account9@gmail.com', 5106666666, 'repairaccount9', 'Stewart Jay', '34632 Fowler Street, San Diego CA, 92213', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Candy Cane', 'agent9@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(9,9,'A', '2018-1-10 2:15:55', '2018-1-10 2:18:10', 9);
/*GAME COPY*/
INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(2, 9, 'Digital', '2015-11-23', 21.60);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('9', '9', '2018-1-10 2:15:55', '2011-1-10 2:18:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Firmware Download is Stuck', '1');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(9,'2018-1-30 2:15:55');
/*Troubleshooting*/
INSERT INTO troubleshooting(ticketID, solutionID,dateCreated,  solutionProvided, internalPartAssociated, troubleshootingType, errorCode)
VALUES(9,9,'2018-1-30 2:15:55', 'Used external storage for firmware', 'N/A', 'Firmware Update', 124);

								/*Account #10 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account10@gmail.com', 5106677991, 'repairaccount10', 'Smith Wee', '123 Fake Street, Bakersfield CA, 93311', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Lemon Lee', 'agent10@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(10,10,'A', '2018-1-9 8:19:55', '2018-1-9 8:21:10', 7);
/*GAME COPY*/ 
INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(2, 1, 'Digital', '2015-11-23', 25.60);
INSERT INTO game_copy (gameID, accountID, distributionType, purchaseDate, purchasePrice)
VALUES(3, 1, 'Digital', '2015-10-6', 20.60);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('10', '10', '2018-1-9 8:19:55', '2011-1-9 8:21:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Game Installation Not Working', '1');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(10,'2018-2-03 2:15:55');
/*Troubleshooting*/
INSERT INTO troubleshooting(ticketID, solutionID,dateCreated,solutionProvided, internalPartAssociated, troubleshootingType, errorCode)
VALUES(10,10,'2018-2-03 2:15:55', 'Free up memory for installation', 'HDD', 'HDD Replacement', 123);
