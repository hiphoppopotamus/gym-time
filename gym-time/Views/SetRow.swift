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

    @Binding var labels: [String]

    var body: some View {
        HStack {
            Image(systemName: "checkmark.diamond")
                .font(.title2)
            ForEach(labels, id: \.self) { label in
                Spacer()
                SetInput(unit: label)
            }
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
    let unit: String
    
    @State var quantity: String = "0"
    
    var body: some View {
        
        HStack(alignment: .lastTextBaseline, spacing: 5.0) {
            TextField("\(quantity)", text: $quantity)
                .font(
                    .custom(
                        "Epilogue-BoldItalic",
                        size: 32,
                        relativeTo: .title
                    )
                )
                .multilineTextAlignment(.trailing)
            
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
}

#Preview {
    SetRow(labels: .constant(["reps", "kg"]))
        .padding()
}
