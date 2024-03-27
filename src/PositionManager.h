#ifndef POSITIONMANAGER_H
#define POSITIONMANAGER_H

#include "position.pb.h"
#include <unordered_map>

class PositionManager {
public:
    PositionManager();
    void generateInitialPosition(rtls::Position& position, int sensorId);
    void updatePosition(rtls::Position& position, int sensorId);
    bool isInitialPositionSet(int sensorId);

private:
    struct SensorState {
        rtls::Data3d position;
        rtls::Data3d velocity;
    };

    std::unordered_map<int, SensorState> sensorStates;
    float randomFloat(float min, float max);
    void adjustVelocity(rtls::Data3d& velocity);
    float getRandomJumpValue();

    const float INITIAL_MIN = 0.0f;
    const float INITIAL_MAX = 100.0f;
    const float NOISE_MIN = -0.3f;
    const float NOISE_MAX = 0.3f;
    const float MAX_VELOCITY_CHANGE = 0.5f;
};


#endif 
