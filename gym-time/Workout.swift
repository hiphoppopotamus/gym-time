//
//  Workout.swift
//  gym-time
//
//  Created by Euan Widjaja on 11/06/23.
//

import SwiftData

@Model
class Workout {
    var title: String
    var subtitle: String
    
    init(title: String, subtitle: String) {
        self.title = title
        self.subtitle = subtitle
    }
}
