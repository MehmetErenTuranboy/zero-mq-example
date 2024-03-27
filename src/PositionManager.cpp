#include "PositionManager.h"
#include <cstdlib>
#include <ctime>
#include <random>

float PositionManager::getRandomJumpValue() {
    static std::mt19937 gen(std::random_device{}());
    static std::uniform_real_distribution<> distr(0.0, 1.0);

    return distr(gen) > 0.9 ? 0.5 : 0.0;
}

PositionManager::PositionManager() {
    srand(static_cast<unsigned>(time(0)));
}

float PositionManager::randomFloat(float min, float max) {
    return (max - min) * static_cast<float>(rand()) / static_cast<float>(RAND_MAX) + min;
}

void PositionManager::adjustVelocity(rtls::Data3d& velocity) {
    // Adjust velocity slightly at each step
    velocity.set_x(velocity.x() + randomFloat(-MAX_VELOCITY_CHANGE, MAX_VELOCITY_CHANGE));
    velocity.set_y(velocity.y() + randomFloat(-MAX_VELOCITY_CHANGE, MAX_VELOCITY_CHANGE));
}

void PositionManager::generateInitialPosition(rtls::Position& position, int sensorId) {
    position.set_sensorid(sensorId);
    position.set_timestamp_usec(static_cast<uint64_t>(time(NULL)) * 1000000);

    float x = randomFloat(INITIAL_MIN, INITIAL_MAX) + randomFloat(NOISE_MIN, NOISE_MAX);
    float y = randomFloat(INITIAL_MIN, INITIAL_MAX) + randomFloat(NOISE_MIN, NOISE_MAX);
    float z = randomFloat(NOISE_MIN, NOISE_MAX);

    rtls::Data3d* position_data = new rtls::Data3d();
    position_data->set_x(x);
    position_data->set_y(y);
    position_data->set_z(z);
    position.set_allocated_position(position_data);

    sensorStates[sensorId].velocity.set_x(randomFloat(-1.0, 1.0));
    sensorStates[sensorId].velocity.set_y(randomFloat(-1.0, 1.0));
    sensorStates[sensorId].velocity.set_z(0);

    // Save the initial position
    sensorStates[sensorId].position = *position.mutable_position();
}

void PositionManager::updatePosition(rtls::Position& position, int sensorId) {
    auto& state = sensorStates[sensorId];

    // Adjust velocity for natural movement changes
    adjustVelocity(state.velocity);
    position.set_sensorid(sensorId);
    position.set_timestamp_usec(static_cast<uint64_t>(time(NULL)) * 1000000);

    // Update position based on velocity
    state.position.set_x(state.position.x() + state.velocity.x());
    state.position.set_y(state.position.y() + state.velocity.y());
    state.position.set_z(getRandomJumpValue()); // With 10% chance player jumped

    // Apply the updated position
    position.mutable_position()->CopyFrom(state.position);
}


bool PositionManager::isInitialPositionSet(int sensorId) {
    return sensorStates.find(sensorId) != sensorStates.end();
}
