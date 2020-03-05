//
//  AnimationBinder.swift
//  SwiftUIDemo
//
//  Created by Hardik Ramolia on 05/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct AnimationBinder: View {
    
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        VStack {
            Stepper("Scale value", value:
                $animationAmount.animation(
                    Animation.easeIn(duration: 1)
                    .repeatCount(3, autoreverses: true)
            ), in: 1...10)
            Spacer()
            Button("Click me") {
                self.animationAmount += 1
            }
            .padding(50)
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
        }
    }
}

struct AnimationBinder_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBinder()
    }
}
