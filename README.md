Project for my tests with using Oracle Pro*C tool.
=================================================

### preparation
>    Install Oracle InstantClient and setup user.
    Build project

### exam 01
>	That is the first simple project where we
	can make first connect to Oracle database.
	Make select from EMP and DEPT tables.
	This example based on example from Oracle
	document E53432-01 Pro*C/C++ Programmer's
	Guide 12c Release 1 (12.1) 2-14.

### exam 02
>	This example based on exam 02 but with
	advance using of predefined host data
	type. In a exam 01 we have problem with
	length of emp_name member for null terminated
	strings we always have length equal as
	host declared variable in our case this is 32.
	Exam 02 introduce using the VARCHAR type.
	Now we have exact length in "len" member of
	VARCHAR. Data stored in "arr" member. So we
	just set zero:
	emprec.emp_name.arr[emprec.emp_name.len] = '\0';

