import http from "k6/http";
import { check, sleep } from "k6";

// Test configuration
export const options = {
  vus: 10,
  duration: "10s",
  thresholds: {          // Performance thresholds
    http_req_duration: [
      'p(95)<200', // 95% of requests should be <200ms
      'avg<500',   // avg should be <500ms
    ],
  },
  noConnectionReuse: true
}

const SERVICE_HOST = "http://127.0.0.1:3000";

// Simulated user behavior
export default function () {
  let res = http.get(SERVICE_HOST);
  // Validate response status
  check(res, { "status was 200": (r) => r.status == 200 });
  sleep(1);
}