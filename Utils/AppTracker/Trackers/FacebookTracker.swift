//
//  FacebookTracker.swift
//  Presentation
//
//  Created by Modestas Rimeikis on 2023-03-29.
//

import Foundation

struct FacebookTracker: Trackable {
    let type: TrackerType = .facebook
    
    func trackUserInteraction(action: String) {
        print("FacebookTracker: \(action)")
    }
}
