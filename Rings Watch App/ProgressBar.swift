//
//  ProgressBar.swift
//  Rings
//
//  Created by Anthony Lartey on 07/03/2024.
//

import SwiftUI

struct ProgressBar: View {
    @Binding var progress: Float
    var body: some View {
        Circle()
            .trim(from: 0, to: CGFloat(min(progress, 1.0)))
            .stroke(style: StrokeStyle(lineWidth: 13.0, lineCap: .round, lineJoin: .round))
            .foregroundStyle(Color.yellow)
            .rotationEffect(Angle(degrees: 270.0))

    }
}
