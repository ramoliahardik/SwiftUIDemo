//
//  FrameworkList.swift
//  SwiftUIDemo
//
//  Created by Hardik.Ramoliya on 16/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct FrameworkList: View {
    var body: some View {
        List {
            NavigationLink(destination: ControllerRepresent()) {
                Text("Controller Representable")
            }
            NavigationLink(destination: ViewRepresent()) {
                Text("View Representable")
            }
        }
    }
}

struct FrameworkList_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkList()
    }
}
