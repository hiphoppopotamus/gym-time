//
//  Workout.swift
//  gym-time
//
//  Created by Euan Widjaja on 11/06/23.
//

import Foundation
import SwiftData

@Model
final class Workout {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
