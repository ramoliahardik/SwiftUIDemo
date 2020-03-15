//
//  SequenceGesture.swift
//  SwiftUIDemo
//
//  Created by Hardik Ramolia on 15/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct SequenceGesture: View {
    @State private var offset: CGSize = .zero
    @State private var translation: CGSize = .zero
    @State private var canDrag: Bool = false
    
    var body: some View {
        let longPress = LongPressGesture(minimumDuration: 1).onEnded { val in
            self.canDrag = true
        }
        
        let drag = DragGesture().onChanged { val in
            self.translation = val.translation
            self.canDrag = true
        }.onEnded { val in
            self.offset.width += val.translation.width
            self.offset.height += val.translation.height
            self.translation = .zero
            self.canDrag = false
        }
        
        let longPressDrag = longPress.sequenced(before: drag)
        
        return Image(systemName: "star.circle.fill")
            .font(.system(size: 100))
            .offset(x: offset.width, y: offset.height)
            .animation(.easeInOut)
            .foregroundColor(.green)
            .gesture(longPress)
    }
}

struct SequenceGesture_Previews: PreviewProvider {
    static var previews: some View {
        SequenceGesture()
    }
}
