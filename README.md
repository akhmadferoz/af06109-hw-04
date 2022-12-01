# CS 232 Operating Systems

## Assignment 04: Street Simulation

<img src="https://camo.githubusercontent.com/ac28190b3bdb446d46b2760854ecec42927bd2ae802d0729c6b0e72449b56082/68747470733a2f2f6769746875622e6769746875626173736574732e636f6d2f696d616765732f6d6f64756c65732f6c6f676f735f706167652f4769744875622d4d61726b2e706e67" alt="github" width="30"/>

[**GitHub Repository Link**](https://github.com/akhmadferoz/af06109-os-hw-04)

## How To Run This Program

### Method 1

In order to compile the program, run the following command:

```
gcc -Wall -lpthread ./**/*.c -o main.out
```

Once the program has been compiled, run the following command to execute the compiled program:

```
./main.out
```

## Explanation

I have made use of one mutex lock `mutexStreet` to ensure syncronization of the total number of cars (`cars_on_street`, `incoming_onstreet`, `outgoing_onstreet` and `cars_since_repair`) along with two conditional variables `condStreet` to monitor street repair and `condFLow` to monitor the current traffic flow.

Every time a car, incoming or outgoing wishes to enter the street, the `incoming_enter` and `outgoing_enter` functions enable the lock and then check if the street is currently being repaired. If it is, the car waits on the `condStreet` conditional variable. Once the street is repaired, the car is allowed to enter the street and the lock is disabled.

In addition, I check if the street capacity is not exceeded. If it is, the car waits on the `condFlow` conditional variable again. Once the street capacity is under 3, the car is allowed to enter the street and the lock is disabled.

Finally, I check if the street needs to be repaired based on the total number of cars that have entered the street since the last repair. If it does, the street is repaired and the `condStreet` conditional variable is signalled to allow the cars waiting on the street to enter.
