import Foundation

protocol Trackable {
    var type: TrackerType { get }
    
    func trackUserInteraction(action: String)
}

enum TrackerType {
    case facebook
    case firebase
    case google
    case telesoftas
}
