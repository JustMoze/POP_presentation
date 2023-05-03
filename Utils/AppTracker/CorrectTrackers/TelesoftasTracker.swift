import Foundation

struct TelesoftasTracker: Trackable {
    let type: TrackerType = .telesoftas
    
    func trackUserInteraction(action: String) {
        print("TelesoftasTracker: \(action)")
    }
}
