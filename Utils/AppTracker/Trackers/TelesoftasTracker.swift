//
//  TelesoftasTracker.swift
//  Presentation
//
//  Created by Modestas Rimeikis on 2023-03-29.
//

import Foundation

struct TelesoftasTracker: Trackable {
    let type: TrackerType = .telesoftas
    
    func trackUserInteraction(action: String) {
        print("TelesoftasTracker: \(action)")
    }
}
