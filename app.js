const express = require('express');
const app = express();

app.get('/', async (req, res) => {
    res.send('OssAutomationTest');
})
app.listen(3000);