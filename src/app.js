const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.json({ message: 'Hello from LAB-1 app' });
});

module.exports = app;
