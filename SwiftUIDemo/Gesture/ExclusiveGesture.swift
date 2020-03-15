//
//  ExclusiveGesture.swift
//  SwiftUIDemo
//
//  Created by Hardik Ramolia on 15/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct ExclusiveGesture: View {
    @State private var scale: CGFloat = .zero
    @State private var offset: CGSize = .zero
    @State private var translation: CGSize = .zero
    
    var body: some View {
        
        let pinch = MagnificationGesture().onChanged { val in
            self.scale = val.magnitude
        }.onEnded { val in
            self.scale = val.magnitude
        }
        
        let drag = DragGesture().onChanged { val in
            self.translation = val.translation
        }.onEnded { val in
            self.offset.width += val.translation.width
            self.offset.height += val.translation.height
            self.translation = .zero
        }
        
        let pinOrMove = pinch.exclusively(before: drag)
        
        return Image(systemName: "star.circle.fill")
            .font(.system(size: 100))
            .offset(x: offset.width, y: offset.height)
            .animation(.easeInOut)
            .foregroundColor(.green)
        .gesture(pinOrMove)
    }
}

struct ExclusiveGesture_Previews: PreviewProvider {
    static var previews: some View {
        ExclusiveGesture()
    }
}
