//
//  ShowHideAnimation.swift
//  SwiftUIDemo
//
//  Created by Hardik Ramolia on 05/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint
    
    func body(content: Content) -> some View {
        content.rotationEffect(.degrees(amount), anchor: anchor)
            .clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(active: CornerRotateModifier(amount: -90, anchor: .topLeading),
                  identity: CornerRotateModifier(amount: 0, anchor: .topLeading))
    }
}

struct ShowHideAnimation: View {
    
    @State private var isRed = false
    
    var body: some View {
        VStack {
            Button("Click me") {
                withAnimation {
                    self.isRed.toggle()
                }
            }
            if isRed {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                    .transition(.pivot)
//                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

struct ShowHideAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ShowHideAnimation()
    }
}
