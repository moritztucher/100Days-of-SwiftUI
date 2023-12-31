//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Moritz Tucher on 30.12.23.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false

        var body: some View {
            Group {
                    Text("Lumos")
                    Text("Obliviate")
                }
        }
}

#Preview {
    ContentView()
}
