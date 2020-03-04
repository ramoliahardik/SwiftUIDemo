//
//  ValueSelector.swift
//  SwiftUIDemo
//
//  Created by Hardik Ramolia on 04/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct ValueSelector: View {
    
    var colors = ["Red", "Green", "Blue", "Tartan"]
    @State private var selectedColor = 0

    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    
    @State var sliderValue = 0.0
    var minimumValue = 0.0
    var maximumvalue = 100.0
    
    @State private var birthDate = Date()
    @State private var isToggle : Bool = false
    @State private var age = 18

    
    var body: some View {
        VStack {
            Picker(selection: $selectedColor, label: Text("Please choose a color")) {
                ForEach(0 ..< colors.count) {
                    Text(self.colors[$0])
                }
            }
            Text("You selected: \(colors[selectedColor])")

            DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: .date) {
                Text("Select a date")
            }

            Text("Date is \(birthDate, formatter: dateFormatter)")

            Toggle(isOn: $isToggle) {
                Text("Switch")
                .font(.title)
                .foregroundColor(Color.white)
            }
            HStack {
                Slider(value: $sliderValue, in: minimumValue...maximumvalue)
                Text("\(Int(sliderValue))")
            }
            HStack {
                Stepper("Enter your age", value: $age, in: 0...130)
                Text("Your age is \(age)")
            }
        }
    }
}

struct ValueSelector_Previews: PreviewProvider {
    static var previews: some View {
        ValueSelector()
    }
}
