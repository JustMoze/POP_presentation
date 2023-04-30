////
////  AppTracker.swift
////  Presentation
////
////  Created by Modestas Rimeikis on 2023-03-30.
////
//
//import Foundation
//
//protocol AppTrackable {
//    func trackFirstButtonTap()
//    func trackSecondButtonTap()
//    func trackThirdButtonTap()
//}
//
//class AppTracker: AppTrackable {
//    
//    static let shared = AppTracker()
//    
//    var trackers: [Trackable] = []
//    
//    private init() {}
//    
//    func register(tracker: Trackable) {
//        if !trackers.contains(where: { $0.type == tracker.type }) {
//            trackers.append(tracker)
//        } else {
//            print("We don't want dublicates :D ")
//        }
//    }
//    
//    func trackFirstButtonTap() {
//        trackers
//            .forEach { $0.trackUserInteraction(action: "First button tapped") }
//    }
//    
//    func trackSecondButtonTap() {
//        trackers
//            .forEach { $0.trackUserInteraction(action: "Second button tapped") }
//    }
//    
//    func trackThirdButtonTap() {
//        trackers
//            .forEach { $0.trackUserInteraction(action: "Third button tapped") }
//    }
//}
