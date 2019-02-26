CREATE OR REPLACE VIEW chatPending AS
	SELECT 
	accountID as "account",
	emailadd as "email",
	phonenumber as "number",
	startDate as "initiated",
	EXTRACT(DOW FROM (startdate)) as "day of week",
	EXTRACT(EPOCH FROM (current_timestamp - startdate)) as "seconds waited",
	to_char((current_timestamp - startdate),'HH24 hrs MI "minutes" SS "seconds"') as "time waited"
	
	FROM chat NATURAL JOIN account WHERE enddate IS NULL ORDER BY startdate ASC;

CREATE OR REPLACE VIEW problemAnalysis AS
	SELECT
	problemarea,
	AVG(EXTRACT(EPOCH FROM (enddate - startdate))) as "Time", 
	avg(customerfeedback)
	FROM chat natural join account natural join ticket
	where sessionDropped = 0
	group by problemarea;
	
CREATE OR REPLACE VIEW billingAnalysis AS
	SELECT 
	problemdescription, 
	refundtype, 
	solutionprovided 
	FROM solution natural join ticket natural join billing;

CREATE OR REPLACE VIEW repairAnalysis AS
	SELECT 
	solutionprovided, 
	warrantyassociated, 
	repairnotes 
	FROM solution natural join ticket natural join hardware_repair;
	
CREATE OR REPLACE VIEW troubleshootingAnalysis AS
	SELECT 
	problemdescription, 
	solutionprovided, 
	internalpartassociated, 
	errorcode, 
	troubleshootingtype 
	FROM solution natural join ticket natural join troubleshooting;
	
CREATE OR REPLACE VIEW accountAnalysis AS
	SELECT 
	problemdescription, 
	solutionprovided, 
	accountissue, 
	accountstatus 
	FROM solution natural join ticket natural join account_issues;
	
CREATE OR REPLACE VIEW billingSolutions AS
	select solutionprovided as "Solution", count(solutionprovided) as "Count" 
	from billing group by solutionprovided;
	
CREATE OR REPLACE VIEW repairSolutions AS
	select solutionprovided as "Solution", count(solutionprovided) as "Count" 
	from hardware_repair group by solutionprovided;
	
CREATE OR REPLACE VIEW accountSolutions AS
	select solutionprovided as "Solution", 
	count(solutionprovided) as "Count" 
	from account_issues group by solutionprovided;
	
CREATE OR REPLACE VIEW troubleshootingSolutions AS
	select solutionprovided as "Solution", count(solutionprovided) as "Count" 
	from troubleshooting group by solutionprovided;
	
/* BEGINNING CHATS DROPPED REPORT*/
CREATE OR REPLACE VIEW chatsDropped AS
	SELECT
	startdate,
	enddate,
	regexp_replace(address, '^.* ', '') as "Zip Code",  
	TRUNC(SUM(sessionDropped),3) as "Total Dropped",
	TRUNC(CAST(SUM(EXTRACT(EPOCH FROM (enddate - startdate))) AS INTEGER), 3) as "Time in Queue",
	TRUNC((CAST(SUM(EXTRACT(EPOCH FROM (enddate - startdate))) AS INTEGER)/60)*5, 3) as "Total Cost"
	FROM 
	account natural join chat
	GROUP BY address, startdate, enddate;

CREATE OR REPLACE VIEW chatsDroppedByZipCode AS
	 select 
	 startdate,
	 enddate,
	 "Zip Code", 
	 COUNT("Zip Code") as "Total",
	 TRUNC(sum("Total Dropped"),3) as "Total Dropped", 
	 TRUNC(sum("Total Cost"), 2) as "Total Cost", 
	 TRUNC(sum("Time in Queue"),2)  as "Time in Queue"
	 from chatsDropped 
	 group by "Zip Code", startdate, enddate;
	
/* END CHATS DROPPED REPORT*/	
	
/* BEGINNING CUSTOMER SAT REPORT*/

CREATE OR REPLACE VIEW agentPerformance AS
	SELECT 
	agentname,
	astarttime,
	aendtime,
	TRUNC(avg(customerfeedback),2) as "Customer Satisfaction",
	TRUNC(CAST(SUM(EXTRACT(EPOCH FROM (aendtime - astarttime)))/6 AS INTEGER), 2) as "Time Worked",
	TRUNC(CAST(SUM(((EXTRACT(EPOCH FROM (aendtime - astarttime)))/60)*15) AS INTEGER),2) as "Salary",
	CASE WHEN avg(problemarea) >= 3.1
            THEN 'Account Issues'
		 WHEN avg(problemarea) >= 2.1
            THEN 'Billing'
		 WHEN avg(problemarea) >= 1.1
            THEN 'Repair'
		 WHEN avg(problemarea) >= 0
            THEN 'Troubleshooting'
			ELSE ''
		 END AS Focus
	FROM agent natural join answered_by natural join chat natural join ticket
	GROUP BY agentname, astarttime, aendtime;

CREATE OR REPLACE VIEW salesAgentReport AS
	SELECT
	astarttime,
	aendtime,
		CASE 
		 WHEN avg(problemarea) >= 3.1
            THEN 'Account Issues'
		 WHEN avg(problemarea) >= 2.1
            THEN 'Billing'
		 WHEN avg(problemarea) >= 1.1
            THEN 'Repair'
		 WHEN avg(problemarea) >= 0
            THEN 'Troubleshooting'
			ELSE ''
		 END AS Speciality,
	TRUNC(avg(customerfeedback),2) as Customer_Satisfaction,
	SUM(EXTRACT(EPOCH FROM (aendtime - astarttime)))/6 as Time_Worked,
	(SUM(EXTRACT(EPOCH FROM (aendtime - astarttime)))/60)*100 as Salary
	FROM agent natural join answered_by natural join chat natural join ticket 
	GROUP BY problemarea, astarttime, aendtime;
	
CREATE OR REPLACE VIEW aggSalesAgentReport AS
	select 
		astarttime, 
		aendtime,
		speciality, 
		trunc(avg(customer_satisfaction), 2) as AvgCustSat,
		trunc(cast(sum(time_worked) as integer), 2) as TotalTime,
		trunc(cast(sum(salary) as integer), 2) as TotalCost
		from salesAgentReport group by speciality,astarttime, aendtime;
		
/* END CUSTOMER SAT REPORT*/
	
	
	
	
	
	