//
//  WorkoutView.swift
//  gym-time
//
//  Created by Euan Widjaja on 4/07/23.
//

import SwiftUI

struct WorkoutView: View {
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack(spacing: 15) {
                    ExerciseCard()
                    ExerciseCard()
                    ExerciseCard()
                    ExerciseCard()
                }
                .padding()
            }
            .navigationTitle("Booty day baby")
        }

        
    }
}

#Preview {
    WorkoutView()
}
