<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Clocking Manager</title>

<style  type="text/css">


table, th, td {
	width:60%;
	border: 1px solid black;
	border-collapse: collapse;
	margin-bottom: 30px;
}

th, td {
	padding: 5px;	
}

label {
	width: 180px;
	clear: left;
	text-align: left;
}

input[type="text"], label {
	float: left;
	display: block;
	border: 0;
}

#mainheadercontainer {
	width: 100%;
	overflow: hidden;
	float: left;
}

#logout {
	float: right;
}

#mainheader {
	text-align: center;
}

#controlscontainer {
	width: 100%;
	overflow: hidden;
	margin-bottom: 30px;
}

#controlscontainer > div {
	float: left;
	width: 30%;
	padding-left: 10px;	
}

#controlsleft {
	border-right: 5px solid black;
}

#controlscentre {
	border-right: 5px solid black;
}

#monthdisplaycontainer {
	width: 100%;
	overflow: hidden;
	margin-bottom: 30px;
}

#monthdisplaycontainer > div {
	float: left;
	width: 33%;
	padding-left: 3px;
}

#expectedbalancecontainer {
	width: 100%;
	margin-bottom: 30px;
	overflow: hidden;
}

#expectedbalancecontainer > div {
	float: left;
	width: 50%;
}


</style>

</head>
<body>

<% String dailyHours = (String)session.getAttribute("dailyHours"); %>
<% String target = (String)session.getAttribute("target"); %>
<% String targetDate = (String)session.getAttribute("targetDate"); %>
<% String previousBalance = (String)session.getAttribute("previousBalance"); %>
<% String week1day1in1 = (String)session.getAttribute("week1day1in1"); %>
<form method="post" action="<%= response.encodeUrl(request.getContextPath() + "/LogoutHandler") %>">
<div id="logout">
<input type="submit" id="logoutbutton" name="logout" value="Log out"/>
</div>
</form>

<form action="/ClockingsController" method="post">
<div id="mainheadercontainer">
<div id="mainheader">
<h2>Clocking Manager</h2>
</div>
</div>

<div id="monthdisplaycontainer">
<div id="monthdisplayp4weeks">
<input type="submit" id="p4weeks" name="p4weeks" value="Previous four weeks"/>
</div>
<div id="monthdisplaybalancebf">
<label for="previousbalance">Balance brought forward: </label>
<input id="previousbalance" type="text" name="previousbalance" value=<%= previousBalance %>>
</div>
<div id="monthdisplayn4weeks">
<button id="n4weeks" name="n4weeks" type="button">Next four weeks</button>
</div>
</div>

<div id="controlscontainer">

<div id="controlsleft">
<label for="sdduration">Standard day duration: </label>
<input id="dailyHours" type="text" name="dailyHours" value=<%= dailyHours %>>
<br/>
<label for="slduration">Standard lunch duration: </label>
<input id="slduration" type="text" name="slduration" value="00.00">
</div>


<div id="controlscentre">
<label for="target">Target: </label>
<input id="target" type="text" name="target" value=<%= target %>>
<br/>
<label for="targetdate">Target date: </label>
<input id="targetDate" type="text" name="targetDate" value=<%= targetDate %>>
</div>

<div id="controlsright">
<label for="avtperday">Average time per day <br/><span>needed to meet target: </span></label>
<input id="avtperday" type="text" name="avtperday" value="00:00:00">

<br/>
<label for="avtperweek">Average time per week <br/><span>needed to meet target: </span></label>
<input id="avtperweek" type="text" name="avtperweek" value="00:00:00">
</div>

</div>

<div id="expectedbalancecontainer">
<div id="expectedbalancedisplay">
<label for="exptbalance">Expected balance at end <br/><span>of current month: </span></label>
<input id="exptbalance" type="text" name="exptbalance" value="00:00:00">
</div>
<div id="savecontrol">
<input type="submit" id="saveall" name="saveall" value="Save timesheet"/>
</div>
</div>

<div id="week1">
<table>
<tr>
<th></th>
<th>20/06/16</th>
<th>21/06/16</th>
<th>22/06/16</th>
<th>23/06/16</th>
<th>24/06/16</th>
<th>25/06/16</th>
<th>26/06/16</th>
</tr>
<tr>
<th>In</th>
<td><input id="week1day1in1" type="text" name="week1day1in1" value=<%= week1day1in1 %>></td>
<td><input id="week1day2in1" type="text" name="week1day2in1" value=<%= target %>></td>
<td><input id="week1day3in1" type="text" name="week1day3in1" value=<%= target %>></td>
<td><input id="week1day4in1" type="text" name="week1day4in1" value=<%= target %>></td>
<td><input id="week1day5in1" type="text" name="week1day5in1" value=<%= target %>></td>
<td><input id="week1day6in1" type="text" name="week1day6in1" value=<%= target %>></td>
<td><input id="week1day7in1" type="text" name="week1day7in1" value=<%= target %>></td>
</tr>
<tr>
<th>Out</th>
<td><input id="week1day1out1" type="text" name="week1day1out1" value=<%= target %>></td>
<td><input id="week1day2out1" type="text" name="week1day2out1" value=<%= target %>></td>
<td><input id="week1day3out1" type="text" name="week1day3out1" value=<%= target %>></td>
<td><input id="week1day4out1" type="text" name="week1day4out1" value=<%= target %>></td>
<td><input id="week1day5out1" type="text" name="week1day5out1" value=<%= target %>></td>
<td><input id="week1day6out1" type="text" name="week1day6out1" value=<%= target %>></td>
<td><input id="week1day7out1" type="text" name="week1day7out1" value=<%= target %>></td>
</tr>
<tr>
<th>In</th>
<td><input id="week1day1in2" type="text" name="week1day1in2" value=<%= target %>></td>
<td><input id="week1day2in2" type="text" name="week1day2in2" value=<%= target %>></td>
<td><input id="week1day3in2" type="text" name="week1day3in2" value=<%= target %>></td>
<td><input id="week1day4in2" type="text" name="week1day4in2" value=<%= target %>></td>
<td><input id="week1day5in2" type="text" name="week1day5in2" value=<%= target %>></td>
<td><input id="week1day6in2" type="text" name="week1day6in2" value=<%= target %>></td>
<td><input id="week1day7in2" type="text" name="week1day7in2" value=<%= target %>></td>
</tr>
<tr>
<th>Out</th>
<td><input id="week1day1out2" type="text" name="week1day1out2" value=<%= target %>></td>
<td><input id="week1day2out2" type="text" name="week1day2out2" value=<%= target %>></td>
<td><input id="week1day3out2" type="text" name="week1day3out2" value=<%= target %>></td>
<td><input id="week1day4out2" type="text" name="week1day4out2" value=<%= target %>></td>
<td><input id="week1day5out2" type="text" name="week1day5out2" value=<%= target %>></td>
<td><input id="week1day6out2" type="text" name="week1day6out2" value=<%= target %>></td>
<td><input id="week1day7out2" type="text" name="week1day7out2" value=<%= target %>></td>
</tr>
<tr>
<th>Daytype</th>
<td>
	<select>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="weekend">Weekend</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="weekend">Weekend</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="weekend">Weekend</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="weekend">Weekend</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="weekend">Weekend</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="weekend">Weekend</option>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="weekend">Weekend</option>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
</tr>
<tr>
<th>Std. Hours</th>
<td>07:24</td>
<td>07:24</td>
<td>07:24</td>
<td>07:24</td>
<td>07:24</td>
<td>00:00</td>
<td>00:00</td>
</tr>
<tr>
<th>Worked</th>
<td>07:43</td>
<td>00:00</td>
<td>07:43</td>
<td>07:33</td>
<td>07:42</td>
<td>0.00</td>
<td>0.00</td>
</tr>
<tr>
<th>Earned</th>
<td>00:19</td>
<td>00:00</td>
<td>00:19</td>
<td>00:09</td>
<td>00:18</td>
<td>0.00</td>
<td>0.00</td>
</tr>
<tr>
<th>Balance</th>
<td>01:19</td>
<td>01:19</td>
<td>01:38</td>
<td>01:47</td>
<td>02:05</td>
<td>02:05</td>
<td>02:05</td>
</tr>
</table>
</div>

<div id="week2">
<table>
<tr>
<th></th>
<th>27/06/16</th>
<th>28/06/16</th>
<th>29/06/16</th>
<th>30/06/16</th>
<th>01/07/16</th>
<th>02/07/16</th>
<th>03/07/16</th>
</tr>
<tr>
<th>In</th>
<td><input id="week2day1in1" type="text" name="week2day1in1" value=<%= target %>></td>
<td><input id="week2day2in1" type="text" name="week2day2in1" value=<%= target %>></td>
<td><input id="week2day3in1" type="text" name="week2day3in1" value=<%= target %>></td>
<td><input id="week2day4in1" type="text" name="week2day4in1" value=<%= target %>></td>
<td><input id="week2day5in1" type="text" name="week2day5in1" value=<%= target %>></td>
<td><input id="week2day6in1" type="text" name="week2day6in1" value=<%= target %>></td>
<td><input id="week2day7in1" type="text" name="week2day7in1" value=<%= target %>></td>
</tr>
<tr>
<th>Out</th>
<td><input id="week2day1out1" type="text" name="week2day1out1" value=<%= target %>></td>
<td><input id="week2day2out1" type="text" name="week2day2out1" value=<%= target %>></td>
<td><input id="week2day3out1" type="text" name="week2day3out1" value=<%= target %>></td>
<td><input id="week2day4out1" type="text" name="week2day4out1" value=<%= target %>></td>
<td><input id="week2day5out1" type="text" name="week2day5out1" value=<%= target %>></td>
<td><input id="week2day6out1" type="text" name="week2day6out1" value=<%= target %>></td>
<td><input id="week2day7out1" type="text" name="week2day7out1" value=<%= target %>></td>
</tr>
<tr>
<th>In</th>
<td><input id="week2day1in2" type="text" name="week2day1in2" value=<%= target %>></td>
<td><input id="week2day2in2" type="text" name="week2day2in2" value=<%= target %>></td>
<td><input id="week2day3in2" type="text" name="week2day3in2" value=<%= target %>></td>
<td><input id="week2day4in2" type="text" name="week2day4in2" value=<%= target %>></td>
<td><input id="week2day5in2" type="text" name="week2day5in2" value=<%= target %>></td>
<td><input id="week2day6in2" type="text" name="week2day6in2" value=<%= target %>></td>
<td><input id="week2day7in2" type="text" name="week2day7in2" value=<%= target %>></td>
</tr>
<tr>
<th>Out</th>
<td><input id="week2day1out2" type="text" name="week2day1out2" value=<%= target %>></td>
<td><input id="week2day2out2" type="text" name="week2day2out2" value=<%= target %>></td>
<td><input id="week2day3out2" type="text" name="week2day3out2" value=<%= target %>></td>
<td><input id="week2day4out2" type="text" name="week2day4out2" value=<%= target %>></td>
<td><input id="week2day5out2" type="text" name="week2day5out2" value=<%= target %>></td>
<td><input id="week2day6out2" type="text" name="week2day6out2" value=<%= target %>></td>
<td><input id="week2day7out2" type="text" name="week2day7out2" value=<%= target %>></td>
</tr>
<tr>
<th>Daytype</th>
<td>
	<select>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="weekend">Weekend</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="weekend">Weekend</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="weekend">Weekend</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="weekend">Weekend</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="weekend">Weekend</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="weekend">Weekend</option>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="weekend">Weekend</option>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
</tr>
<tr>
<th>Std. Hours</th>
<td>07:24</td>
<td>07:24</td>
<td>07:24</td>
<td>07:24</td>
<td>07:24</td>
<td>00:00</td>
<td>00:00</td>
</tr>
<tr>
<th>Worked</th>
<td>07:44</td>
<td>07:24</td>
<td>07:09</td>
<td>08:44</td>
<td>00:00</td>
<td>00:00</td>
<td>00:00</td>
</tr>
<tr>
<th>Earned</th>
<td>00:20</td>
<td>00:00</td>
<td>00:15</td>
<td>01:20</td>
<td>00:00</td>
<td>00:00</td>
<td>00:00</td>
</tr>
<tr>
<th>Balance</th>
<td>02:25</td>
<td>02:25</td>
<td>02:10</td>
<td>03:30</td>
<td>03:30</td>
<td>03:30</td>
<td>03:30</td>
</tr>
</table>
</div>

<div id="week3">
<table>
<tr>
<th></th>
<th>04/07/16</th>
<th>05/07/16</th>
<th>06/07/16</th>
<th>07/07/16</th>
<th>08/07/16</th>
<th>09/07/16</th>
<th>10/07/16</th>
</tr>
<tr>
<th>In</th>
<td><input id="week3day1in1" type="text" name="week3day1in1" value=<%= target %>></td>
<td><input id="week3day2in1" type="text" name="week3day2in1" value=<%= target %>></td>
<td><input id="week3day3in1" type="text" name="week3day3in1" value=<%= target %>></td>
<td><input id="week3day4in1" type="text" name="week3day4in1" value=<%= target %>></td>
<td><input id="week3day5in1" type="text" name="week3day5in1" value=<%= target %>></td>
<td><input id="week3day6in1" type="text" name="week3day6in1" value=<%= target %>></td>
<td><input id="week3day7in1" type="text" name="week3day7in1" value=<%= target %>></td>
</tr>
<tr>
<th>Out</th>
<td><input id="week3day1out1" type="text" name="week3day1out1" value=<%= target %>></td>
<td><input id="week3day2out1" type="text" name="week3day2out1" value=<%= target %>></td>
<td><input id="week3day3out1" type="text" name="week3day3out1" value=<%= target %>></td>
<td><input id="week3day4out1" type="text" name="week3day4out1" value=<%= target %>></td>
<td><input id="week3day5out1" type="text" name="week3day5out1" value=<%= target %>></td>
<td><input id="week3day6out1" type="text" name="week3day6out1" value=<%= target %>></td>
<td><input id="week3day7out1" type="text" name="week3day7out1" value=<%= target %>></td>
</tr>
<tr>
<th>In</th>
<td><input id="week3day1in2" type="text" name="week3day1in2" value=<%= target %>></td>
<td><input id="week3day2in2" type="text" name="week3day2in2" value=<%= target %>></td>
<td><input id="week3day3in2" type="text" name="week3day3in2" value=<%= target %>></td>
<td><input id="week3day4in2" type="text" name="week3day4in2" value=<%= target %>></td>
<td><input id="week3day5in2" type="text" name="week3day5in2" value=<%= target %>></td>
<td><input id="week3day6in2" type="text" name="week3day6in2" value=<%= target %>></td>
<td><input id="week3day7in2" type="text" name="week3day7in2" value=<%= target %>></td>
</tr>
<tr>
<th>Out</th>
<td><input id="week3day1out2" type="text" name="week3day1out2" value=<%= target %>></td>
<td><input id="week3day2out2" type="text" name="week3day2out2" value=<%= target %>></td>
<td><input id="week3day3out2" type="text" name="week3day3out2" value=<%= target %>></td>
<td><input id="week3day4out2" type="text" name="week3day4out2" value=<%= target %>></td>
<td><input id="week3day5out2" type="text" name="week3day5out2" value=<%= target %>></td>
<td><input id="week3day6out2" type="text" name="week3day6out2" value=<%= target %>></td>
<td><input id="week3day7out2" type="text" name="week3day7out2" value=<%= target %>></td>
</tr>
<tr>
<th>Daytype</th>
<td>
	<select>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="weekend">Weekend</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="weekend">Weekend</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="weekend">Weekend</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="weekend">Weekend</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="weekend">Weekend</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="weekend">Weekend</option>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="weekend">Weekend</option>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
</tr>
<tr>
<th>Std. Hours</th>
<td>07:24</td>
<td>07:24</td>
<td>07:24</td>
<td>07:24</td>
<td>07:24</td>
<td>00:00</td>
<td>00:00</td>
</tr>
<tr>
<th>Worked</th>
<td>00:00</td>
<td>00:00</td>
<td>00:00</td>
<td>00:00</td>
<td>00:00</td>
<td>00:00</td>
<td>00:00</td>
</tr>
<tr>
<th>Earned</th>
<td>00:00</td>
<td>00:00</td>
<td>00:00</td>
<td>00:00</td>
<td>00:00</td>
<td>00:00</td>
<td>00:00</td>
</tr>
<tr>
<th>Balance</th>
<td>03:30</td>
<td>03:30</td>
<td>03:30</td>
<td>03:30</td>
<td>03:30</td>
<td>03:30</td>
<td>03:30</td>
</tr>
</table>
</div>

<div id="week4">
<table>
<tr>
<th></th>
<th>11/07/16</th>
<th>12/07/16</th>
<th>13/07/16</th>
<th>14/07/16</th>
<th>15/07/16</th>
<th>16/07/16</th>
<th>17/07/16</th>
</tr>
<tr>
<th>In</th>
<td><input id="week4day1in1" type="text" name="week4day1in1" value=<%= target %>></td>
<td><input id="week4day2in1" type="text" name="week4day2in1" value=<%= target %>></td>
<td><input id="week4day3in1" type="text" name="week4day3in1" value=<%= target %>></td>
<td><input id="week4day4in1" type="text" name="week4day4in1" value=<%= target %>></td>
<td><input id="week4day5in1" type="text" name="week4day5in1" value=<%= target %>></td>
<td><input id="week4day6in1" type="text" name="week4day6in1" value=<%= target %>></td>
<td><input id="week4day7in1" type="text" name="week4day7in1" value=<%= target %>></td>
</tr>
<tr>
<th>Out</th>
<td><input id="week4day1out1" type="text" name="week4day1out1" value=<%= target %>></td>
<td><input id="week4day2out1" type="text" name="week4day2out1" value=<%= target %>></td>
<td><input id="week4day3out1" type="text" name="week4day3out1" value=<%= target %>></td>
<td><input id="week4day4out1" type="text" name="week4day4out1" value=<%= target %>></td>
<td><input id="week4day5out1" type="text" name="week4day5out1" value=<%= target %>></td>
<td><input id="week4day6out1" type="text" name="week4day6out1" value=<%= target %>></td>
<td><input id="week4day7out1" type="text" name="week4day7out1" value=<%= target %>></td>
</tr>
<tr>
<th>In</th>
<td><input id="week4day1in2" type="text" name="week4day1in2" value=<%= target %>></td>
<td><input id="week4day2in2" type="text" name="week4day2in2" value=<%= target %>></td>
<td><input id="week4day3in2" type="text" name="week4day3in2" value=<%= target %>></td>
<td><input id="week4day4in2" type="text" name="week4day4in2" value=<%= target %>></td>
<td><input id="week4day5in2" type="text" name="week4day5in2" value=<%= target %>></td>
<td><input id="week4day6in2" type="text" name="week4day6in2" value=<%= target %>></td>
<td><input id="week4day7in2" type="text" name="week4day7in2" value=<%= target %>></td>
</tr>
<tr>
<th>Out</th>
<td><input id="week4day1out2" type="text" name="week4day1out2" value=<%= target %>></td>
<td><input id="week4day2out2" type="text" name="week4day2out2" value=<%= target %>></td>
<td><input id="week4day3out2" type="text" name="week4day3out2" value=<%= target %>></td>
<td><input id="week4day4out2" type="text" name="week4day4out2" value=<%= target %>></td>
<td><input id="week4day5out2" type="text" name="week4day5out2" value=<%= target %>></td>
<td><input id="week4day6out2" type="text" name="week4day6out2" value=<%= target %>></td>
<td><input id="week4day7out2" type="text" name="week4day7out2" value=<%= target %>></td>
</tr>
<tr>
<th>Daytype</th>
<td>
	<select>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="weekend">Weekend</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="weekend">Weekend</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="weekend">Weekend</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="weekend">Weekend</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="weekend">Weekend</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="weekend">Weekend</option>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
<td>
	<select>
		<option value="weekend">Weekend</option>
		<option value="standard">Standard</option>
		<option value="leave">Leave</option>
		<option value="bankholiday">Bank Holiday</option>
	</select>
</td>
</tr>
<tr>
<th>Std. Hours</th>
<td>07:24</td>
<td>07:24</td>
<td>07:24</td>
<td>07:24</td>
<td>07:24</td>
<td>00:00</td>
<td>00:00</td>
</tr>
<tr>
<th>Worked</th>
<td>00:00</td>
<td>00:00</td>
<td>00:00</td>
<td>00:00</td>
<td>00:00</td>
<td>00:00</td>
<td>00:00</td>
</tr>
<tr>
<th>Earned</th>
<td>00:00</td>
<td>00:00</td>
<td>00:00</td>
<td>00:00</td>
<td>00:00</td>
<td>00:00</td>
<td>00:00</td>
</tr>
<tr>
<th>Balance</th>
<td>03:30</td>
<td>03:30</td>
<td>03:30</td>
<td>03:30</td>
<td>03:30</td>
<td>03:30</td>
<td>03:30</td>
</tr>
</table>
</div>
</form>
</body>
</html>