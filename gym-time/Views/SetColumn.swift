//
//  SetColumn.swift
//  gym-time
//
//  Created by Euan Widjaja on 18/06/23.
//

import SwiftUI

private enum Dimensions {
    static let setColumnPadding = EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20)
}

struct SetColumn: View {
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
    }
}

struct SetLabel: View {
    let label: String
    
    var body: some View {
        Text("\(label)")
            .font(
                .headline
                .weight(.semibold)
                .italic()
            )
    }
}

#Preview {
    SetColumn()
        .padding()
}
