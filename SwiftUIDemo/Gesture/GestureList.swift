//
//  GestureList.swift
//  SwiftUIDemo
//
//  Created by Hardik Ramolia on 15/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct GestureList: View {
    var body: some View {
        List {
            NavigationLink(destination: Tapgesture()) {
                Text("TapGesture")
            }
            NavigationLink(destination: LongPressGestures()) {
                Text("LongPressGesture")
            }
            NavigationLink(destination: MagnificationGestures()) {
                Text("MagnificationGesture")
            }
            NavigationLink(destination: DragGestures()) {
                Text("DragGesture")
            }
            NavigationLink(destination: SequenceGesture()) {
                Text("Sequenced")
            }
            NavigationLink(destination: SimultaneousGesture()) {
                Text("Simultaneous")
            }
            NavigationLink(destination: ExclusiveGesture()) {
                Text("Exclusive")
            }
            NavigationLink(destination: GestureMaskEventModifier()) {
                Text("GestureMask & EventModifier")
            }
        }
    }
}

struct GestureList_Previews: PreviewProvider {
    static var previews: some View {
        GestureList()
    }
}
