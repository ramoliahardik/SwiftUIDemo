//
//  BIndingDemo.swift
//  SwiftUIDemo
//
//  Created by Hardik Ramolia on 15/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct BIndingDemo: View {
    @Binding var isOn: Bool
    var body: some View {
      Button(
        action: { self.isOn.toggle() },
        label: { Text(self.isOn ? "Hide" : "Show") }
      )
    }
}

struct BIndingDemo_Previews: PreviewProvider {
    @State static var myCoolBool = true
    static var previews: some View {
        BIndingDemo(isOn: $myCoolBool)
    }
}
