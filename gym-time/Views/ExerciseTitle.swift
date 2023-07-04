//
//  ExerciseTitle.swift
//  gym-time
//
//  Created by Euan Widjaja on 18/06/23.
//

import SwiftUI

struct ExerciseTitle: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack(spacing: 12.0) {
            SetImage()
            VStack(alignment: .leading) {
                Text(title)
                    .font(
                        .custom(
                            "Cubano",
                            size: 18,
                            relativeTo: .title3
                        )
                    )
                Text(subtitle)
                    .font(
                        .custom(
                            "Epilogue-SemiBold",
                            size: 14,
                            relativeTo: .footnote
                        )
                    )
            }
            Spacer()
        }
        
    }
}

struct SetImage: View {
    var body: some View {
        Rectangle()
            .foregroundStyle(Color.gray.opacity(0.4))
            .frame(width: 65.0, height: 65.0)
            .clipShape(RoundedRectangle(cornerRadius: 12.0))
    }
}

#Preview {
    ExerciseTitle(
        title: "Overhead Dumbbell Press",
        subtitle: "3 sets • 10-12 reps • 14 kg "
    )
    .padding()
}
