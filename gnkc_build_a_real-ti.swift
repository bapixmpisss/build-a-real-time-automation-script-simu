// gnkc_build_a_real-ti.swift

import Foundation

// Define a data model for Automation Script Simulator
struct AutomationScript {
    let id: UUID
    var name: String
    var triggers: [Trigger]
    var actions: [Action]
    var conditions: [Condition]
    var simulationState: SimulationState
}

struct Trigger {
    let id: UUID
    var type: TriggerType
    var configuration: [String: String]
}

enum TriggerType: String, CaseIterable {
    case timer
    case sensor
    case apiCall
    case userInteraction
}

struct Action {
    let id: UUID
    var type: ActionType
    var configuration: [String: String]
}

enum ActionType: String, CaseIterable {
    case notification
    case apiCall
    case deviceControl
    case dataStorage
}

struct Condition {
    let id: UUID
    var type: ConditionType
    var configuration: [String: String]
}

enum ConditionType: String, CaseIterable {
    case equals
    case notEquals
    case greaterThan
    case lessThan
    case contains
}

enum SimulationState: String, CaseIterable {
    case idle
    case running
    case paused
    case stopped
    case error
}

// Example usage:
let script = AutomationScript(
    id: UUID(),
    name: "Turn on living room lights",
    triggers: [
        Trigger(id: UUID(), type: .timer, configuration: ["interval": "30 minutes"])
    ],
    actions: [
        Action(id: UUID(), type: .deviceControl, configuration: ["device": "living room lights", "action": "turn on"])
    ],
    conditions: [],
    simulationState: .idle
)

print(script)