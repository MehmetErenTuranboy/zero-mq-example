# RTLS Simulator

## Overview
This project simulates the movement of sensors in a Real-Time Location System (RTLS). It focuses on 3D movement, simulating sensors. The simulation uses ZeroMQ for messaging and Protocol Buffers for data serialization.

## Why Pub-Sub?
The pub-sub (publisher-subscribe) pattern is used in this project for its efficiency in distributing messages to subscribers. Pub-sub enables scalable and flexible communication if we want to extend the number of subscribers this pattern will perform very well because of scalability features. Since the use case the communication unidirectional and scalibility is important I prefered this pattern.

## Why TCP Rather Than UDP?
TCP (Transmission Control Protocol) is chosen over UDP (User Datagram Protocol) for a few key reasons:
- **Reliability**: TCP ensures that all messages sent by the sensors reach the subscribers in the correct order and without loss. This is crucial for accurately tracking sensor movements over time. TCP can be used in games like football simulations to calculate the locations of users due to its reliability and ordered delivery of data packets. This ensures that all movements and actions are accurately tracked and synchronized across all players, maintaining the integrity of the game state without loss or misordering of crucial positional information. 
- **Connection-oriented**: TCP's connection-oriented nature allows for persistent connections between sensors and subscribers, facilitating continuous data streams without the need for constant reconnection.
- **Timing**: Since publisher sends data a 1-second interval between data transmissions is more than sufficient for using TCP without needing to resort to UDP.

## Architecture
- **PositionManager**
Responsible for managing and simulating the 3D movement of sensors, including generating initial positions, updating positions based on velocity, and randomly simulating jumps.

- **rtls_simulator**
Acts as the publisher in the system, simulating real-time sensor data generation and broadcasting position updates over the network using ZeroMQ.

- **subscriber**
Functions as a subscriber, listening for and processing real-time updates on sensor positions published by the rtls_simulator.


## Features
- Simulates 3D movement of sensors.
- Uses ZeroMQ for efficient messaging between components.
- Utilizes Protocol Buffers for structured data serialization.

## Requirements
- ZeroMQ
- Protocol Buffers
- C++ Compiler (C++14 or newer)
- CMake

## Building the Project
1. Install ZeroMQ and Protocol Buffers on your system.
2. Navigate to the project directory and create a build directory:
```shell
cd kinexon/build
```
3. Run CMake and build the project:
```shell
cmake ..
make
```

## Running the Simulator
After building the project, you can run the RTLS simulator using:
```shell
./rtls_simulator
```
## Runing the Subscriber 
```shell
./subscriber
```