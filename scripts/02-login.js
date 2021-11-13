import http from 'k6/http';

export default function() {
  const url = 'http://test.k6.io/login';

  const payload = JSON.stringify({
    email: 'test@gmail.com',
    password: '123456'
  });

  const headers = {
    'Content-Type': 'application/json'
  };

  const res = http.post(url, payload, { headers });

  console.log('Response time: ', res.timings.duration);
}