
/*

Billing Accounts 

*/

								/*Account #1 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account21@yahoo.com', 5105555555, 'repairaccount1', 'Jane Doe', '123 New Riders Street, San Francisco CA, 94546', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Gary Foo', 'agent21@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID, chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(21,21,'A', '2018-01-14 13:34:55', '2018-01-14 13:56:10', 5);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('21', '21', '2018-01-14 13:34:55', '2018-01-14 13:56:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Membership renewal, unauthorized', '3');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(21,'2018-01-30 2:46:55');
/*Billing*/
INSERT INTO billing(solutionID, ticketID, dateCreated, refundType, refundTypeRequested, solutionProvided)
VALUES(21, 21,'2018-01-30 2:46:55','Credit Card', 'Credit Card', 'Refunded to Consumer');

								/*Account #2 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account22@yahoo.com', 5104444444, 'repairaccount2', 'John Doe', '123 La Jolla Street, San Diego CA, 92211', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Walter White', 'agent22@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(22,22,'A', '2018-2-25 08:03:55', '2018-2-25 08:23:10', 7);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('22', '22', '2018-2-25 08:03:55', '2018-2-25 08:23:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Membership renewal, unauthorized', '3');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(22,'2018-03-03 1:42:55');
/*Billing*/
INSERT INTO billing(solutionID, ticketID, dateCreated, refundType, refundTypeRequested, solutionProvided)
VALUES(22,22,'2018-03-03 1:42:55','Credit Card', 'Credit Card', 'Refunded to Consumer');

								/*Account #3 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account23@yahoo.com', 5103333333, 'repairaccount3', 'Sally Smith', '123 Fake Street, Bakersfield CA, 93311', 'North America', 'Master', 'Active'); 
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Dexter Keeler', 'agent23@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID, chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(23,23,'A', '2018-03-11 10:41:55', '2018-03-11 10:46:10', 4);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('23', '23', '2018-03-11 10:41:55', '2018-03-11 10:46:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Household member made unauthorized purchase', '3');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(23,'2018-04-03 05:15:55');
/*Billing*/
INSERT INTO billing(solutionID, ticketID,dateCreated, refundType, refundTypeRequested, solutionProvided)
VALUES(23,23,'2018-04-03 05:15:55','Store Credit', 'Credit Card', 'Refunded to Consumer');


								/*Account #4 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account24@yahoo.com', 5102222222, 'repairaccount4', 'Smith Wee', '123 Fake Street, Bakersfield CA, 93311', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Debra Lamb', 'agent24@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(24,24,'A', '2018-07-22 14:54:55', '2018-07-22 15:30:10', 5);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('24', '24', '2018-07-22 14:54:55', '2018-07-22 15:30:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Household member made unauthorized purchase', '3');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(24,'2018-08-26 2:18:55');
/*Billing*/
INSERT INTO billing(solutionID, ticketID, dateCreated, refundType, refundTypeRequested, solutionProvided)
VALUES(24, 24,'2018-08-26 2:18:55','Store Credit', 'Credit Card', 'Refunded to Consumer');

								/*Account #5 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account25@yahoo.com', 5101119999, 'repairaccount5', 'Doug Dottler', '123 Fake Street, Los Angeles CA, 92315', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Halp Meeh', 'agent25@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(25,25,'A', '2018-11-28 12:54:55', '2018-11-30 12:56:10', 1);
/*ANSWER BY*/
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('25', '25', '2018-11-28 12:54:55', '2018-11-30 12:56:10');
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Household member made unauthorized purchase', '3');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(25,'2018-12-03 4:10:26');
/*Billing*/
INSERT INTO billing(solutionID, ticketID, dateCreated, refundType, refundTypeRequested, solutionProvided)
VALUES(25, 25,'2018-12-03 4:10:26','None', 'Credit Card', 'Denied Refund');


								/*Account #6 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account26@gmail.com', 5102224444, 'repairaccount6', 'Jamie Ham', '123 Fake Street, Seattle WA, 64511', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(2,'Howle Yu', 'agent26@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(26,26,'A', '2018-11-29 010:54:55', '2018-11-29 10:56:10', 3);
/*ANSWER BY*/
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('26', '26', '2018-11-29 010:54:55', '2018-11-29 10:56:10');
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Account owner made unauthorized purchase', '3');
/*SOLUTION*/
INSERT INTO solution(ticketID, dateCreated)
VALUES(26,'2018-12-03 8:10:55');
/*Billing*/
INSERT INTO billing(solutionID, ticketID, dateCreated, refundType, refundTypeRequested, solutionProvided)
VALUES(26, 26,'2018-12-03 8:10:55','None', 'Credit Card', 'Denied Refund');

								/*Account #7 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account27@gmail.com', 5108886666, 'repairaccount7', 'Anna Dear', '456 Fake Street, Bakersfield CA, 93311', 'North America', 'Master', 'Active'); 
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(2,'Lauer Tree', 'agent27@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(27,27,'A', '2018-11-26 13:00:55', '2018-11-26 13:26:10', 8);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('27', '27', '2018-11-26 13:00:55', '2018-11-26 13:26:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Account owner made unauthorized purchase', '3');
/*SOLUTION*/
INSERT INTO solution(ticketID, dateCreated)
VALUES(27,'2018-12-06 3:16:55');
/*Billing*/
INSERT INTO billing(solutionID,ticketID, dateCreated, refundType, refundTypeRequested, solutionProvided)
VALUES(27,27,'2018-12-06 3:16:55','Store Credit', 'Store Credit', 'Refunded to Consumer');

								/*Account #8 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account28@gmail.com', 5104443322, 'repairaccount8', 'Stewart Jay', '34632 Fowler Street, San Diego CA, 92213', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(3,'Bruce Wayne', 'agent28@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(28,28,'A', '2018-1-17 08:32:55', '2018-1-17 08:40:10', 6);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('28', '28', '2018-1-17 08:32:55', '2018-1-17 08:40:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Membership renewal, unauthorized', '3');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(28,'2018-03-03 06:03:55');
/*Billing*/
INSERT INTO billing(solutionID, ticketID,dateCreated, refundType, refundTypeRequested, solutionProvided)
VALUES(28,28,'2018-03-03 06:03:55','None', 'Credit Card', 'Denied Refund');

								/*Account #9*/
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account29@gmail.com', 5106666666, 'repairaccount9', 'Henry Feng', '123 Bakers Lane, Bakersfield CA, 93311', 'North America', 'Master', 'Active');
/*Agent
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(3,'Stan Lee', 'agent29@yahoo.com', 'test123');*/
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(29,29,'A', '2018-06-30 08:30:55', '2018-6-30 08:40:10', 7);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('29', '29', '2018-6-30 08:30:55', '2018-6-30 08:40:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Household member made unauthorized purchase', '3');
/*SOLUTION*/
INSERT INTO solution(ticketID,dateCreated)
VALUES(29,'2018-07-03 8:12:34');
/*Billing*/
INSERT INTO billing(solutionID, ticketID, dateCreated, refundType, refundTypeRequested, solutionProvided)
VALUES(29,29,'2018-07-03 8:12:34','Credit Card', 'Credit Card', 'Refunded to Consumer');

								/*Account #10 */
INSERT INTO account(emailAdd, phoneNumber, password, name, address, region, accountType, accountStatus) 
VALUES('account30@gmail.com', 5106677991, 'repairaccount10', 'Smith Dong', '3602 Coolidge Street, Oakland CA, 94602', 'North America', 'Master', 'Active');
/*Agent*/
INSERT INTO agent(agentTier, agentName, emailAdd, password)
VALUES(1,'Larry Keeper', 'agent30@yahoo.com', 'test123');
/*Chat*/
INSERT INTO chat(accountID, ticketID,chatTranscript, startDate, endDate,/*totalChatDuration, ticketCallBack,*/ customerFeedback)
VALUES(30,30,'A', '2018-08-30 08:34:55', '2018-08-30 08:56:10', 9);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('30', '30', '2018-08-30 08:34:55', '2018-08-30 08:56:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Account owner made unauthorized purchase', '3');
/*SOLUTION*/
INSERT INTO solution(ticketID, dateCreated)
VALUES(30,'2018-10-03 9:12:56');
/*Billing*/
INSERT INTO billing(solutionID,ticketID, dateCreated, refundType, refundTypeRequested, solutionProvided)
VALUES(30,30,'2018-10-03 9:12:56','Credit Card', 'Credit Card', 'Refunded to Consumer');
