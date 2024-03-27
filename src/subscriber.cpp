#include <zmq.hpp>
#include <iostream>
#include "../build/position.pb.h"

void processMessage(const zmq::message_t& message) {
    rtls::Position position;
    if (position.ParseFromArray(message.data(), message.size())) {
        // Successfully deserialized, now process the position
        std::cout << "Received position for sensor " << position.sensorid() << ": "
                  << "x = " << std::fixed << position.position().x() << " m, "
                  << "y = " << std::fixed << position.position().y() << " m, "
                  << "z = " << std::fixed << position.position().z() << " m, " << std::endl;
    } else {
        std::cerr << "Failed to parse position message." << std::endl;
    }
}

int main() {
    zmq::context_t context(1);
    zmq::socket_t subscriber(context, ZMQ_SUB);
    subscriber.connect("tcp://localhost:5556");
    
    // specifying subscriber socket
    subscriber.set(zmq::sockopt::subscribe, "");

    while (true) {
        zmq::message_t message;
        // Subscriber receives message
        if (subscriber.recv(message, zmq::recv_flags::none)) {
            processMessage(message);
        }
    }
    return 0;
}
