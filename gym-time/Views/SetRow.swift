//
//  SetRow.swift
//  gym-time
//
//  Created by Euan Widjaja on 18/06/23.
//

import SwiftUI

private enum Dimensions {
    static let setRowPadding = EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20)
}

struct SetRow: View {
    var body: some View {
        HStack {
            Image(systemName: "checkmark.diamond")
                .font(.title2)
            Spacer()
            SetInput(quantity: "10", unit: "reps")
            Spacer()
            SetInput(quantity: "15", unit: "kg")
        }
        .padding(Dimensions.setRowPadding)
        .background(Color.gray.opacity(0.4))
        .clipShape(RoundedRectangle(cornerRadius: 5.0))
    }
}

struct SetInput: View {
    let quantity: String
    let unit: String
    
    var body: some View {
        Text("\(quantity) ")
            .font(
                .title
                .weight(.semibold)
                .italic()
            ) +
        Text("\(unit)")
            .font(
                .headline
                .weight(.semibold)
                .italic()
            )
    }
}

#Preview {
    SetRow()
        .padding()
}
