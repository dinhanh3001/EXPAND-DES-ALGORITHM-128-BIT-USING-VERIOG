# software: 
- Quatus
- Modle sim
- Questa sim

# FLOW CHART 
<img width="1873" height="1064" alt="image" src="https://github.com/user-attachments/assets/b1aab276-8cb1-4c74-a01d-4957c4212877" />

- ROUND_KEY BLOCK 
<img width="1874" height="1038" alt="image" src="https://github.com/user-attachments/assets/b57dd87e-0fda-48b7-814d-5f1072f4dea6" />

- STATE MACHINE:
<img width="1872" height="970" alt="image" src="https://github.com/user-attachments/assets/58412200-c53e-4130-987b-792e7ba4b30c" />

<img width="1222" height="969" alt="image" src="https://github.com/user-attachments/assets/bc999fe1-19f9-4d22-a1f5-0c4475c11cc5" />

# Simulation 

- Pre-simulation ( RTL SIMULATION): In this funciton, we don't care about propagation delay among blocks

  <img width="1154" height="427" alt="image" src="https://github.com/user-attachments/assets/5bfc85d6-560a-40f9-bfe1-ce0a78cc81bb" />
  
- Post-Simulation ( GATE LEVEL SIMULATION). In this funciton, we have to run compile design and the application will assign logic gates in our design, So we have to ensure that the clock cycle (when running test bench) is bigger than the maximum cycle delay.

<img width="1233" height="637" alt="image" src="https://github.com/user-attachments/assets/0778fb03-2178-4fd9-b1a7-f740593fab12" />

  For example, in my design, the maximun frequency is 116.5 Mhz, so we can not simulate with higher frequency. Althought the result is still generated but it is not correct.
  
<img width="1154" height="529" alt="image" src="https://github.com/user-attachments/assets/cd5ff940-c34b-4a40-8e71-e3927cc64c71" />

