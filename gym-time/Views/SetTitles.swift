//
//  SetTitles.swift
//  gym-time
//
//  Created by Euan Widjaja on 18/06/23.
//

import SwiftUI

struct SetTitles: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack(spacing: 15.0) {
            SetImage()
            VStack(alignment: .leading) {
                Text(title)
                    .font(
                        .title3
                        .weight(.heavy)
                    )
                Text(subtitle)
                    .font(
                        .footnote
                        .weight(.semibold)
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
            .frame(width: 60.0, height: 60.0)
            .clipShape(RoundedRectangle(cornerRadius: 5.0))
    }
}

#Preview {
    SetTitles(
        title: "Overhead Dumbbell Press",
        subtitle: "3 sets • 10-12 reps • 14 kg "
    )
    .padding()
}
