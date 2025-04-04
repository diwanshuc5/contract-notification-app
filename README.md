# contract-notification-app

Key features of this project:
* This project will allow user to login and register to contract-notification-app.
* User can add new contract, edit contract and upload contract pdf.
* User will receive timely notification if their contract is about to expire.
* This project uses docker for smooth deployment, Amazon RDS as DB, Express.js, AWS SNS & SQS for notications, AWS Lambda function, AWS S3 for file storage and cron jobs.


Initial setup steps:
1. Ran npm init -y to initialize node.js project which creates package.json file and basic configs.
2. Added express dependecy in package.json file.
3. Added server.js file with basic GET request to check health of server if its running or not.
4. Made docker file with neccessary instructions in it. 
Ran this command to build docker image: docker build -t contract-notification-app .
Ran this command to run the container: docker run -p 3000:3000 contract-notification-app