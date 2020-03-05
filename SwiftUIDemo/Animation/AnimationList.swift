//
//  AnimationList.swift
//  SwiftUIDemo
//
//  Created by Hardik Ramolia on 05/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct AnimationList: View {
    var body: some View {
        List {
            NavigationLink(destination: ImplicitAnimation()) {
                Text("Implicit")
            }
            NavigationLink(destination: CustomAnimation()) {
                Text("Custom")
            }
            NavigationLink(destination: AnimationBinder()) {
                Text("Animate Bindings")
            }
            NavigationLink(destination: ExplicitAnimation()) {
                Text("Explicit")
            }
            NavigationLink(destination: ControllingAnimation()) {
                Text("Controlling")
            }
            NavigationLink(destination: GestureAnimation()) {
                Text("Gesture")
            }
            NavigationLink(destination: ShowHideAnimation()) {
                Text("Show Hide")
            }
        }
    }
}

struct AnimationList_Previews: PreviewProvider {
    static var previews: some View {
        AnimationList()
    }
}
