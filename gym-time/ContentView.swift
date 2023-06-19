//
//  ContentView.swift
//  gym-time
//
//  Created by Euan Widjaja on 11/06/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var workouts: [Workout]
    
    var body: some View {
        VStack() {
            Text("Push Day Baby")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.red)
        .padding()
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Workout.self, inMemory: true)
}
