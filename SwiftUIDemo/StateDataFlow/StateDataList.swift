//
//  StateDataList.swift
//  SwiftUIDemo
//
//  Created by Hardik Ramolia on 15/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct StateDataList: View {
    @State static var myCoolBool = true
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: BIndingDemo(isOn: StateDataList.$myCoolBool)) {
                    Text("Bindings")
                }
                NavigationLink(destination: ObservedObj()) {
                    Text("Observed Object")
                }
                NavigationLink(destination: EnvironmentObj()) {
                    Text("Environment Object")
                }
            }
        }
    }
}

struct StateDataList_Previews: PreviewProvider {
    static var previews: some View {
        StateDataList()
    }
}
