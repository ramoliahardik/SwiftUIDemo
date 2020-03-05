//
//  ControllingAnimation.swift
//  SwiftUIDemo
//
//  Created by Hardik Ramolia on 05/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct ControllingAnimation: View {
    
    @State private var enabled = false
    
    var body: some View {
        Button("Click me") {
            self.enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? Color.blue : Color.red)
        .animation(.default)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1))
    }
}

struct ControllingAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ControllingAnimation()
    }
}
