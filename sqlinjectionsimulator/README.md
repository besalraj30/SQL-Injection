# SQL injection challenge



**⁠⁠SQL injection attacks**⁠⁠⁠ (SQLi) are used by hackers to bypass authentication, read sensitive data, or modify the information in a database. This can occur whenever unsanitized user input is part of an SQL query and could allow the attacker to change, or insert additional SQL statements into the code. It is one of the most severe risks to modern web applications, has been **⁠ranked the #1 risk by OWASP** since 2010 and **⁠⁠⁠constitutes over 44% of the web application attacks**⁠⁠⁠ recorded by Akamai in Q2 2016.



## Solution
The solution to this challenge can be found in [SOLUTION.md](SOLUTION.md).

## Secure version
A secure version of this website can be found in the subfolder [secure](secure/). That version is not vulnerable to SQLi.



## Setup
1. Setup a server with PHP and MySQL support.

2. Run [db/security_challenge.sql](db/security_challenge.sql) to create the MySQL database with all the necessary data inserted into the tables. A database user that only is allowed to do ﻿⁠⁠⁠⁠`SELECT`﻿⁠⁠⁠⁠ queries is also created.
