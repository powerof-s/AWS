# AWS
This small code will help you find the running | pending EC2 and RDS instances from AWS.
It is written in Bash Script and can come very handy, if you want to monitor your resrouces considering the billing aspect.

Assumption:
1) The script assumes that you have AWS configured with Single Sign-On (SSO) using AWS SSO
2) Your AWS secret keys expires in every 12 hours

Caveats:
You will need to first log in to you "default" browser with SSO. If you are not logged in then don't worry, the script will ask you to log in via default browser.


