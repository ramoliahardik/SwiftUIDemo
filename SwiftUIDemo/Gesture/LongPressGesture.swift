//
//  LongPressGesture.swift
//  SwiftUIDemo
//
//  Created by Hardik Ramolia on 15/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct LongPressGestures: View {
    @State private var isPressed = false

    var body: some View {
        Image(systemName: "star.circle.fill")
            .font(.system(size: 200))
            .scaleEffect(isPressed ? 0.5 : 1.0)
            .animation(.easeInOut)
            .foregroundColor(.green)
            .gesture(
                LongPressGesture(minimumDuration: 1.0)
                    .onEnded({ _ in
                        self.isPressed.toggle()
                    })
        )
    }
}

struct LongPressGesture_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGestures()
    }
}
