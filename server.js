const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
    res.send('Hello Friend Hello!');
});

app.get('/health', (req, res) => {
    res.status(200).send('Server is healthy');
});

app.listen(port, () => {
  console.log(`contract-notification-app listening on port ${port}`);
});