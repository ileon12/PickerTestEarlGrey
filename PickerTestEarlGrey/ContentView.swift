//
//  ContentView.swift
//  PickerTestEarlGrey
//
//  Created by Ilse Leon on 1/11/22.
//

import SwiftUI


struct ContentView: View {
    var numbers = Array(stride(from: 0, to: 3001, by: 5))
    @State private var selectedColor = 0

    var body: some View {
        Picker("Please choose a number", selection: $selectedColor) {
            ForEach(numbers, id: \.self) { item in
                Text(String(item))
            }
        }
        .accessibility(identifier: "picker")
        .pickerStyle(.wheel)
        Text("You selected: \(selectedColor)")

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
