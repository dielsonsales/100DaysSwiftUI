//
//  ContentView.swift
//  WeSplit
//
//  Created by Dielson Sales on 05/09/21.
//

import SwiftUI

struct ContentView: View {
    @State var tapCount = 0
    let items = ["One", "Two", "Three"]
    @State private var selectedItem = 0
    var body: some View {
        NavigationView {
            VStack {
                Button("Tap count: \(tapCount)") {
                    self.tapCount += 1
                }
                Form {
                    ForEach(0 ..< self.items.count) { index in
                        Text("\(self.items[index])")
                    }
                }
                .navigationBarTitle("WeSplit")
                Picker("Select something", selection: $selectedItem) {
                    ForEach(0 ..< self.items.count) { index in
                        Text(self.items[index])
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
