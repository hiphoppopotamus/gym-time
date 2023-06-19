//
//  gym_timeApp.swift
//  gym-time
//
//  Created by Euan Widjaja on 11/06/23.
//

import SwiftUI
import SwiftData

@main
struct gym_timeApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Workout.self)
    }
}
