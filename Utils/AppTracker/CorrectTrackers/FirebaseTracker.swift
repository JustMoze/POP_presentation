import Foundation

struct FirebaseTracker: Trackable {
    let type: TrackerType = .firebase
    
    func trackUserInteraction(action: String) {
        print("FirebaseTracker: \(action)")
    }
}
