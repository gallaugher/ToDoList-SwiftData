// File: DetailView.swift Project: ToDoList
// Created by: Prof. John Gallaugher on 9/5/24
// YouTube.com/profgallaugher  -  threads.net/john.gallaugher

import SwiftUI

struct DetailView: View {
    var passedValue: String // Don't initialize it - it will be passed from the parent view
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text("You Are a Swifty Legend!\nAnd you passed over the value \(passedValue)")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button("Get Back!") {
                dismiss()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    DetailView(passedValue: "Item 1")
}
