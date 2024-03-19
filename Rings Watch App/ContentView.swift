//
//  ContentView.swift
//  Rings Watch App
//
//  Created by Anthony Lartey on 07/03/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails: Bool = false
    var body: some View {
        ZStack {
            Color.white
            VStack(spacing: 1) {
                Button ("Press Me!") {
                    showDetails.toggle()
                }
                .foregroundStyle(Color.yellow)
                .padding(.top, -40)
                if showDetails {
                    CircleProgressView()
                } else {
                    Text("")
                }
            }
        }
        .ignoresSafeArea()
    }
}
#Preview {
    ContentView()
}
