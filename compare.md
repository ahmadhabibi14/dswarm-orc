# Replica = 3
```bash

         /\      Grafana   /‾‾/  
    /\  /  \     |\  __   /  /   
   /  \/    \    | |/ /  /   ‾‾\ 
  /          \   |   (  |  (‾)  |
 / __________ \  |_|\_\  \_____/ 

     execution: local
        script: test/traffic.js
        output: -

     scenarios: (100.00%) 1 scenario, 10 max VUs, 40s max duration (incl. graceful stop):
              * default: 10 looping VUs for 10s (gracefulStop: 30s)


     ✓ status was 200

     checks.........................: 100.00% 100 out of 100
     data_received..................: 15 kB   1.5 kB/s
     data_sent......................: 9.9 kB  988 B/s
     http_req_blocked...............: avg=471.85µs min=188.78µs med=413.42µs max=1.28ms   p(90)=817.87µs p(95)=905.82µs
     http_req_connecting............: avg=384.93µs min=142.82µs med=336µs    max=1.16ms   p(90)=637.69µs p(95)=841.32µs
   ✓ http_req_duration..............: avg=432.03µs min=194.15µs med=396.66µs max=1.28ms   p(90)=619.08µs p(95)=735.3µs 
       { expected_response:true }...: avg=432.03µs min=194.15µs med=396.66µs max=1.28ms   p(90)=619.08µs p(95)=735.3µs 
     http_req_failed................: 0.00%   0 out of 100
     http_req_receiving.............: avg=95.79µs  min=33.17µs  med=87.79µs  max=659.51µs p(90)=134.02µs p(95)=165.59µs
     http_req_sending...............: avg=69.1µs   min=19.62µs  med=45.99µs  max=566.41µs p(90)=97.49µs  p(95)=190.58µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s      
     http_req_waiting...............: avg=267.13µs min=88µs     med=232.81µs max=1.18ms   p(90)=400.19µs p(95)=426.68µs
     http_reqs......................: 100     9.977312/s
     iteration_duration.............: avg=1s       min=1s       med=1s       max=1s       p(90)=1s       p(95)=1s      
     iterations.....................: 100     9.977312/s
     vus............................: 10      min=10         max=10
     vus_max........................: 10      min=10         max=10


running (10.0s), 00/10 VUs, 100 complete and 0 interrupted iterations
default ✓ [======================================] 10 VUs  10s
```

# Replica = 2
```bash
k6 run test/traffic.js

         /\      Grafana   /‾‾/  
    /\  /  \     |\  __   /  /   
   /  \/    \    | |/ /  /   ‾‾\ 
  /          \   |   (  |  (‾)  |
 / __________ \  |_|\_\  \_____/ 

     execution: local
        script: test/traffic.js
        output: -

     scenarios: (100.00%) 1 scenario, 10 max VUs, 40s max duration (incl. graceful stop):
              * default: 10 looping VUs for 10s (gracefulStop: 30s)


     ✓ status was 200

     checks.........................: 100.00% 100 out of 100
     data_received..................: 15 kB   1.5 kB/s
     data_sent......................: 9.9 kB  988 B/s
     http_req_blocked...............: avg=453.79µs min=203.03µs med=430.01µs max=1.13ms   p(90)=637.21µs p(95)=810.34µs
     http_req_connecting............: avg=356.16µs min=132µs    med=335.51µs max=991.81µs p(90)=505.82µs p(95)=538.67µs
   ✓ http_req_duration..............: avg=451.43µs min=204.42µs med=444.99µs max=817.91µs p(90)=672.04µs p(95)=729.35µs
       { expected_response:true }...: avg=451.43µs min=204.42µs med=444.99µs max=817.91µs p(90)=672.04µs p(95)=729.35µs
     http_req_failed................: 0.00%   0 out of 100
     http_req_receiving.............: avg=108.07µs min=31.91µs  med=96.69µs  max=327.2µs  p(90)=183.01µs p(95)=220.75µs
     http_req_sending...............: avg=60.55µs  min=20.88µs  med=46.72µs  max=381.96µs p(90)=89.52µs  p(95)=113.18µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s       p(90)=0s       p(95)=0s      
     http_req_waiting...............: avg=282.79µs min=99.24µs  med=280.13µs max=545.6µs  p(90)=436.48µs p(95)=488.72µs
     http_reqs......................: 100     9.982162/s
     iteration_duration.............: avg=1s       min=1s       med=1s       max=1s       p(90)=1s       p(95)=1s      
     iterations.....................: 100     9.982162/s
     vus............................: 10      min=10         max=10
     vus_max........................: 10      min=10         max=10


running (10.0s), 00/10 VUs, 100 complete and 0 interrupted iterations
default ✓ [======================================] 10 VUs  10s
```