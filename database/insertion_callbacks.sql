
/*CALL BACK INSTANCE #1*/


/*Chat*/
INSERT INTO chat(ticketID, accountID, chatTranscript, startDate, endDate, /*totalChatDuration,*/ ticketChatBack, customerFeedback)
VALUES(41,39, 'A', '2018-12-01 11:54:55', '2018-12-01 11:56:10', 39, 1);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('40', '39', '2018-12-01 11:54:55', '2018-12-01 11:56:10');*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Closed', 'Password reset needed', '4');
/*SOLUTION*/
INSERT INTO solution(ticketID, dateCreated)
VALUES(41,'2018-12-03 9:12:56');
/*Account Issues*/
INSERT INTO account_issues(solutionID, ticketID,  dateCreated, accountStatus, accountIssue, solutionProvided)
VALUES(41,41,'2018-12-03 9:12:56', 'Active', 'Agent did not send email', 'Sent Email');

/*CALL BACK INSTANCE #2*/
/*Chat*/
INSERT INTO chat(ticketID, accountID, chatTranscript, startDate, endDate,/*totalChatDuration,*/ ticketChatBack, customerFeedback)
VALUES(42, 37, 'A', '2018-06-10 16:54:55', '2018-06-10 16:56:10', 37, 9);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('40', '37', '2018-06-10 16:54:55', '2018-06-10 16:56:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Closed', 'Invalid email registration', '1');
/*SOLUTION*/
INSERT INTO solution(ticketID, dateCreated)
VALUES(42, '2018-06-11 9:18:56');
/*Account Issues*/
INSERT INTO account_issues(solutionID, ticketID,  dateCreated, accountStatus, accountIssue, solutionProvided)
VALUES(42, 42,'2018-06-11 9:18:56' , 'Active', 'Agent did not send email', 'Changed Email');

/*CALL BACK INSTANCE #3*/
/*Chat*/
INSERT INTO chat(ticketID, accountID, chatTranscript, startDate, endDate,/*totalChatDuration,*/ ticketChatBack, customerFeedback)
VALUES(43,35, 'A', '2018-11-04 06:46:55', '2018-11-04 06:56:10', 35, 1);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('40', '35', '2018-11-04 06:46:55', '2018-11-04 06:56:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Invalid email registration', '4');
/*SOLUTION*/
INSERT INTO solution(ticketID, dateCreated)
VALUES(43, '2018-11-04 07:12:56');
/*Account Issues*/
INSERT INTO account_issues(solutionID, ticketID,  dateCreated, accountStatus, accountIssue, solutionProvided)
VALUES(43, 43, '2018-11-04 07:12:56', 'Active', 'Case was not worked', 'Changed Email');


/*CALL BACK INSTANCE #4*/
/*Chat*/
INSERT INTO chat(ticketID, accountID, chatTranscript, startDate, endDate,/*totalChatDuration,*/ ticketChatBack, customerFeedback)
VALUES(44,33,'A', '2018-04-02 16:54:55', '2018-04-02 16:56:10', 33, 1);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('40', '33', '2018-04-02 16:54:55', '2018-04-02 16:56:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Passward reset needed', '4');
/*SOLUTION*/
INSERT INTO solution(ticketID, dateCreated)
VALUES(44, '2018-04-03 11:17:56');
/*Account Issues*/
INSERT INTO account_issues(solutionID, ticketID,  dateCreated, accountStatus, accountIssue, solutionProvided)
VALUES(44,44, '2018-04-03 11:17:56','Active', 'Agent did not sent email', 'Sent Email');

/*CALL BACK INSTANCE #5*/
/*Chat*/
INSERT INTO chat(ticketID, accountID, chatTranscript, startDate, endDate,/*totalChatDuration,*/ ticketChatBack, customerFeedback)
VALUES(45,34, 'A', '2018-12-26 09:54:55', '2018-12-26 09:56:10', 34, 1);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('40', '34', '2018-12-26 09:54:55', '2018-12-26 09:56:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Account is Banned', '4');
/*SOLUTION*/
INSERT INTO solution(ticketID, dateCreated)
VALUES(45, '2018-12-27 9:57:56');
/*Account Issues*/
INSERT INTO account_issues(solutionID, ticketID,  dateCreated, accountStatus, accountIssue, solutionProvided)
VALUES(45,45,'2018-12-27 9:57:56' ,'Banned', 'Hacker: Do Not Unban', 'No Action');

/*CALL BACK INSTANCE #6*/
/*Chat*/
INSERT INTO chat(ticketID, accountID, chatTranscript, startDate, endDate,/*totalChatDuration,*/ ticketChatBack, customerFeedback)
VALUES(46,34, 'A', '2018-12-27 09:54:55', '2018-12-27 09:56:10', 34, 1);
/*ANSWER BY
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('40', '34', '2018-12-27 09:54:55', '2018-12-27 09:56:10');*/
/*TICKET*/
INSERT INTO ticket(/*transactionGameID, transactionHardID, ticketID,*/ ticketStatus, problemDescription, problemArea)
VALUES('Open', 'Account is Banned', '4');
/*SOLUTION*/
INSERT INTO solution(ticketID, dateCreated)
VALUES(46, '2018-12-28 9:57:56');
/*Account Issues*/
INSERT INTO account_issues(solutionID, ticketID,  dateCreated, accountStatus, accountIssue, solutionProvided)
VALUES(46,46, '2018-12-28 9:57:56','Banned', 'Hacker: Do Not Unban', 'No Action');



/*ANSWER BY*/
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('40', '39', '2018-12-01 11:54:55', '2018-12-01 11:56:10');
/*ANSWER BY*/
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('40', '37', '2018-06-10 16:54:55', '2018-06-10 16:56:10');
/*ANSWER BY*/
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('40', '35', '2018-11-04 06:46:55', '2018-11-04 06:56:10');
/*ANSWER BY*/
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('40', '33', '2018-04-02 16:54:55', '2018-04-02 16:56:10');
/*ANSWER BY*/
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('40', '34', '2018-12-26 09:54:55', '2018-12-26 09:56:10');
/*ANSWER BY*/
INSERT INTO answered_by (agentID, chatID, aStartTime, aEndTime) 
VALUES('40', '34', '2018-12-27 09:54:55', '2018-12-27 09:56:10');

