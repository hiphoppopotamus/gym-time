//
//  WorkoutView.swift
//  gym-time
//
//  Created by Euan Widjaja on 4/07/23.
//

import SwiftUI

struct WorkoutView: View {
    var body: some View {
        
        ScrollView {
            VStack {
                ExerciseCard()
                ExerciseCard()
                ExerciseCard()
                ExerciseCard()
            }
            .padding()
        }
    }
}

#Preview {
    WorkoutView()
}
