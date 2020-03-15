//
//  DragGesture.swift
//  SwiftUIDemo
//
//  Created by Hardik Ramolia on 15/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct DragGestures: View {
    @GestureState private var dragOffset = CGSize.zero
    var body: some View {
        Image(systemName: "star.circle.fill")
            .font(.system(size: 100))
            .offset(x: dragOffset.width, y: dragOffset.height)
            .animation(.easeInOut)
            .foregroundColor(.green)
            .gesture(
                DragGesture()
                    .updating($dragOffset, body: { (value, state, transaction) in
                        
                        state = value.translation
                    })
        )
    }
}

struct DragGesture_Previews: PreviewProvider {
    static var previews: some View {
        DragGestures()
    }
}
