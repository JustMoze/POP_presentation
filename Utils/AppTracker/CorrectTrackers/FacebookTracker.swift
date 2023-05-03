import Foundation

struct FacebookTracker: Trackable {
    let type: TrackerType = .facebook
    
    func trackUserInteraction(action: String) {
        print("FacebookTracker: \(action)")
    }
}
