#include <zmq.hpp>
#include <iostream>
#include <unistd.h> 
#include "PositionManager.h"

// Function to prepare and serialize position data
bool prepareAndSerializePosition(const rtls::Position& position, std::string& serialized, int sensorId) {
    if (!position.SerializeToString(&serialized)) {
        std::cerr << "Failed to serialize position data for sensor " << sensorId << "." << std::endl;
        return false;
    }
    return true;
}

// Function to publish position data
void publishPositionData(zmq::socket_t& publisher, const std::string& serialized, int sensorId, const rtls::Position& position) {
    zmq::message_t message(serialized.size());
    memcpy(message.data(), serialized.data(), serialized.size());
    publisher.send(message, zmq::send_flags::none);

    const auto& position_data = position.position();
    std::cout   << "Published position for sensor " << sensorId << ": "
                << "x = " << std::fixed << position_data.x() << " m, "
                << "y = " << std::fixed << position_data.y() << " m, "
                << "z = " << std::fixed << position_data.z() << " m" << std::endl;
}

int main() {
    zmq::context_t context(1);
    zmq::socket_t publisher(context, ZMQ_PUB);
    // Use all available nw interfaces witg port 5556
    publisher.bind("tcp://*:5556");

    PositionManager positionManager;

    while (true) {
        for (int sensorId = 1; sensorId <= 10; ++sensorId) {
            rtls::Position position;

            // Generate initial position only once per sensor
            if (positionManager.isInitialPositionSet(sensorId)) {
                positionManager.updatePosition(position, sensorId);
            } else {
                positionManager.generateInitialPosition(position, sensorId);
            }

            std::string serialized;
            // Prepare and serialize the position data
            if (prepareAndSerializePosition(position, serialized, sensorId)) {
                // Publish the serialized position data
                publishPositionData(publisher, serialized, sensorId, position);
            }
        }
        sleep(1); // Simulate a 1Hz frequency
    }

    return 0;
}
