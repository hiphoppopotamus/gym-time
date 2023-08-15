//
//  SetColumnLabel.swift
//  gym-time
//
//  Created by Euan Widjaja on 18/06/23.
//

import SwiftUI

private enum Dimensions {
    static let setColumnPadding = EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20)
}

struct SetLabels: View {
    
    @Binding var labels: [String]
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.diamond")
                .font(.title2)
            Spacer()
            SetLabel(label: "reps")
            Spacer()
            SetLabel(label: "kg")
        }
        .padding(Dimensions.setColumnPadding)
        .foregroundStyle(Color("PrimaryColor"))
    }
}

struct SetLabel: View {
    let label: String
    
    var body: some View {
        Text("\(label)")
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
    SetLabels(labels: .constant(["reps", "kg"]))
        .padding()
}
