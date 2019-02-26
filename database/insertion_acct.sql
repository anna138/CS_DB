
/*

Account Issues Accounts 

*/

								/*Account #1 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account31@yahoo.com', 5105555555, 'repairaccount1', 'Jane Doe', '123 Fake Street, Bakersfield CA, 93311', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Garry Jeeper', 'agent31@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(31,31,'A', '2018-06-30 08:47:55', '2018-06-30 08:56:10', 8);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('31', '31', '2018-06-30 08:47:55', '2018-06-30 08:56:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Account was stolen', '4');
/*SOLUTION*/
INSERT INTO solution(ticketID, dateCreated)
VALUES(31, '2018-07-03 9:12:56');
/*Account Issues*/
INSERT INTO account_issues(solutionID,ticketID, dateCreated, accountStatus, accountIssue, solutionProvided)
VALUES(31,31,'2018-07-03 9:12:56', 'Banned', 'Hacked by Main Group', 'Retrieved Account');

								/*Account #2 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account32@yahoo.com', 5104444444, 'repairaccount2', 'John Doe', '456 Fake Street, Bakersfield CA, 93311', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Julie Lang', 'agent32@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(32,32,'A', '2018-10-30 05:30:55', '2018-10-30 05:46:10', 7);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('32', '32', '2018-10-30 05:30:55', '2018-10-30 05:46:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Password reset needed', '4');
/*SOLUTION*/
INSERT INTO solution(ticketID, dateCreated)
VALUES(32, '2018-11-03 11:15:50');
/*Account Issues*/
INSERT INTO account_issues(solutionID, ticketID, dateCreated, accountStatus, accountIssue, solutionProvided)
VALUES(32,32,'2018-11-03 11:15:50', 'Active', 'Lost Password', 'Sent Email');

								/*Account #3 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account33@yahoo.com', 5103333333, 'repairaccount3', 'Sally Smith', '123 New Riders Street, San Francisco CA, 94546', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Happie Sal', 'agent33@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(33,33,'A', '2018-03-17 16:54:55', '2018-03-17 16:56:10', 5);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('33', '33', '2018-03-17 16:54:55', '2018-03-17 16:56:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Passward reset needed', '4');
/*SOLUTION*/
INSERT INTO solution(ticketID, dateCreated)
VALUES(33, '2018-04-01 11:17:56');
/*Account Issues*/
INSERT INTO account_issues(solutionID, ticketID, dateCreated, accountStatus, accountIssue, solutionProvided)
VALUES(33,33,'2018-04-01 11:17:56', 'Active', 'Lost Password', 'Sent Email');

								/*Account #4 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account34@yahoo.com', 5102222222, 'repairaccount4', 'Smith Dong', '3602 Coolidge Street, Oakland CA, 94602', 'North America', 'Master', 'Banned');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Kathy Seng', 'agent34@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(34,34,'A', '2018-11-26 09:54:55', '2018-11-26 09:56:10', 8);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('34', '34', '2018-11-26 09:54:55', '2018-11-26 09:56:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Account is Banned', '4');
/*SOLUTION*/
INSERT INTO solution(ticketID, dateCreated)
VALUES(34, '2018-12-03 9:57:56');
/*Account Issues*/
INSERT INTO account_issues(solutionID, ticketID, dateCreated, accountStatus, accountIssue, solutionProvided)
VALUES(34, 34, '2018-12-03 9:57:56', 'Banned', 'Hacker: Do Not Unban', 'No Action');

								/*Account #5 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account35@yahoo.com', 5101119999, 'repairaccount5', 'Doug Dottler', '123 Fake Street, Los Angeles CA, 92315', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Truman Feng', 'agent35@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(35,35,'A', '2018-11-02 06:46:55', '2018-11-02 06:56:10', 10);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('35', '35', '2018-11-02 06:46:55', '2018-11-02 06:56:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Invalid email registration', '4');
/*SOLUTION*/
INSERT INTO solution(ticketID, dateCreated)
VALUES(35, '2018-11-03 07:12:56');
/*Account Issues*/
INSERT INTO account_issues(solutionID, ticketID, dateCreated, accountStatus, accountIssue, solutionProvided)
VALUES(35, 35, '2018-11-03 07:12:56','Active', 'Incorrect Email', 'Changed Email');

								/*Account #6 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account36@gmail.com', 5102224444, 'repairaccount6', 'Jamie Ham', '123 Fake Street, Seattle WA, 64511', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(2,'David Lee', 'agent36@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(36,36,'A', '2018-11-30 08:54:55', '2018-11-30 08:56:10', 6);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('36', '36', '2018-11-30 08:54:55', '2018-11-30 08:56:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Account was stolen', '4');
/*SOLUTION*/
INSERT INTO solution(ticketID, dateCreated)
VALUES(36, '2018-12-01 7:16:26');
/*Account Issues*/
INSERT INTO account_issues(solutionID, ticketID, dateCreated, accountStatus, accountIssue, solutionProvided)
VALUES(36, 36,'2018-12-01 7:16:26','Banned', 'Hacked by Main Group', 'Retrieved Account');

								/*Account #7 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account37@gmail.com', 5108886666, 'repairaccount7', 'Henry Feng', '123 La Jolla Street, San Diego CA, 92211', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Davy Rune', 'agent37@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(37,37,'A', '2018-05-28 16:54:55', '2018-05-28 16:56:10', 9);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('37', '37', '2018-05-28 16:54:55', '2018-05-28 16:56:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Invalid email registration', '4');
/*SOLUTION*/
INSERT INTO solution(ticketID, dateCreated)
VALUES(37, '2018-06-01 9:18:56');
/*Account Issues*/
INSERT INTO account_issues(solutionID, ticketID, dateCreated, accountStatus, accountIssue, solutionProvided)
VALUES(37, 37,'2018-06-01 9:18:56', 'Active', 'Incorrect Email', 'Changed Email');

								/*Account #8 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account38@gmail.com', 5108887766, 'repairaccount8', 'Harrison Ford', '123 La Jolla Street, San Diego CA, 92211', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(2,'Couch Potato', 'agent38@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate, /*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(38,38,'A', '2018-11-22 02:34:55', '2018-11-22 02:56:10',  1);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('38', '38', '2018-01-22 02:34:55', '2018-01-22 02:56:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Invalid email registration', '1');
/*SOLUTION*/
INSERT INTO solution(ticketID, dateCreated)
VALUES(38, '2018-02-01 3:12:56');
/*Account Issues*/
INSERT INTO account_issues(solutionID, ticketID, dateCreated, accountStatus, accountIssue, solutionProvided)
VALUES(38, 38, '2018-02-01 3:12:56', 'Active', 'Incorrect Email', 'Changed Email');

								/*Account #9*/
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account39@gmail.com', 5106666666, 'repairaccount9', 'Stewart Johnson', '34632 Fowler Street, San Diego CA, 92213', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Candy Crush', 'agent39@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(39,39,'A', '2018-04-22 15:24:55', '2018-04-22 15:26:10', 7);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('39', '39', '2018-04-22 15:24:55', '2018-04-22 15:26:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Password reset needed', '4');
/*SOLUTION*/
INSERT INTO solution(ticketID, dateCreated)
VALUES(39,'2018-05-03 6:02:56');
/*Account Issues*/
INSERT INTO account_issues(solutionID, ticketID, dateCreated, accountStatus, accountIssue, solutionProvided)
VALUES(39, 39, '2018-05-03 6:02:56', 'Active', 'Lost Password', 'Sent Email');

								/*Account #10 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account40@gmail.com', 5107776666, 'repairaccount10', 'Stewart Jay', '34632 Fowler Street, San Diego CA, 92213', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Xie Ting', 'agent40@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate, /*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(40,40,'A', '2018-11-28 11:54:55', '2018-11-28 11:56:10', 2);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('40', '40', '2018-11-28 11:54:55', '2018-11-28 11:56:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Password reset needed', '4');
/*SOLUTION*/
INSERT INTO solution(ticketID, dateCreated)
VALUES(40,'2018-12-03 9:12:56');
/*Account Issues*/
INSERT INTO account_issues(solutionID, ticketID, dateCreated, accountStatus, accountIssue, solutionProvided)
VALUES(40, 40,'2018-12-03 9:12:56','Active', 'Lost Password', 'Sent Email');

							
