import Foundation

struct GoogleTracker: Trackable {
    let type: TrackerType = .google
    
    func trackUserInteraction(action: String) {
        print("GoogleTracker: \(action)")
    }
}
