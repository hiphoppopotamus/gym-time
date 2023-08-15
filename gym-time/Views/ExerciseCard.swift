//
//  ExerciseCard.swift
//  gym-time
//
//  Created by Euan Widjaja on 18/06/23.
//

import SwiftUI

struct ExerciseCard: View {
    
    @State var labels = ["reps", "kg"]
    
    var body: some View {
        VStack(spacing: 8.0) {
            ExerciseTitle(
                title: "Overhead Dumbbell Press",
                subtitle: "3 sets • 10-12 reps • 14 kg"
            )
            SetLabels(labels: $labels)
            VStack(spacing: 8.0) {
                SetRow(labels: $labels)
                SetRow(labels: $labels)
                SetRow(labels: $labels)
            }
        }
        .padding(15.0)
        .background(
            RoundedRectangle(cornerRadius: 24.0)
                .fill(Color("BackgroundColor"))
                .shadow(color: Color("PrimaryColor").opacity(0.3), radius: 5.0)
        )
    }
}

#Preview {
    ExerciseCard()
        .padding()
}
