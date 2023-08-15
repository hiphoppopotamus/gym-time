//
//  SetRow.swift
//  gym-time
//
//  Created by Euan Widjaja on 18/06/23.
//

import SwiftUI

private enum Dimensions {
    // Bottom padding is slightly smaller to compensate for ingrained padding from font
    static let setRowPadding = EdgeInsets(top: 15, leading: 20, bottom: 12, trailing: 20)
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
        .clipShape(
            RoundedRectangle(cornerRadius: 16.0)
        )
        .background(
            RoundedRectangle(cornerRadius: 16.0)
                .stroke(Color("PrimaryColor"), lineWidth: 3.0)
                .fill(Color("BackgroundColor"))
                .shadow(color: Color("PrimaryColor").opacity(0.3), radius: 2.0)
        )
        .foregroundStyle(Color("PrimaryColor"))
    }
}

struct SetInput: View {
    let quantity: String
    let unit: String
    
    var body: some View {
        Text("\(quantity) ")
            .font(
                .custom(
                    "Epilogue-BoldItalic",
                    size: 32,
                    relativeTo: .title
                )
            )
        +
        Text("\(unit)")
            .font(
                .custom(
                    "Epilogue-BoldItalic",
                    size: 16,
                    relativeTo: .headline
                )
            )
    }
}

#Preview {
    SetRow()
        .padding()
}
