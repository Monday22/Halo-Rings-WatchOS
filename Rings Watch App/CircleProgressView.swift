//
//  CircleProgressView.swift
//  Rings
//
//  Created by Anthony Lartey on 07/03/2024.
//

import SwiftUI

struct CircleProgressView: View {
    @State var progress: Float = 0.0
    var body: some View {
        VStack {
            ProgressBar(progress: $progress)
                .padding()
        }
        .onAppear {
            _ =  Timer.scheduledTimer(withTimeInterval: 0.022, repeats: true) { timer in
                withAnimation {
                    progress = progress + 0.022
                    if progress > 1 {
                        timer.invalidate()
                    }
                }
            }
        }
    }
}
#Preview {
    CircleProgressView()
}
