const express = require('express');
const app = express();
const PORT = process.env.PORT || 8080;

// 기본 루트 응답
app.get('/', (req, res) => {
  res.send('Plex Matching Server is Running!');
});

// Healthcheck 엔드포인트
app.get('/health', (req, res) => {
  res.status(200).send('OK');
});

// 서버 실행
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
  console.log('Ready to accept connections');
});
