//
//  ImplicitAnimation.swift
//  SwiftUIDemo
//
//  Created by Hardik Ramolia on 05/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct ImplicitAnimation: View {
    
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        Button("Click me") {
            self.animationAmount += 1
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        .animation(.easeIn)
//        .animation(.easeOut)
//        .animation(.easeInOut)
//        .animation(.linear)
    }
}

struct ImplicitAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ImplicitAnimation()
    }
}
