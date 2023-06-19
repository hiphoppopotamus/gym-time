//
//  SetCard.swift
//  gym-time
//
//  Created by Euan Widjaja on 18/06/23.
//

import SwiftUI

struct SetCard: View {
    var body: some View {
        VStack {
            SetTitles(
                title: "Overhead Dumbbell Press",
                subtitle: "3 sets • 10-12 reps • 14 kg "
            )
            .padding(.bottom, 10)
            SetColumn()
            SetRow()
        }
        .padding()
    }
}

#Preview {
    SetCard()
}
