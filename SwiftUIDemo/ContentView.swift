//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Hardik Ramolia on 04/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct MenuSection: Identifiable {
    let id: Int
    let name: String
}

struct ContentView : View {
    
    var views: [MenuSection] = [MenuSection(id: 0, name: "Basic components"),
        MenuSection(id: 1, name: "Value selector")]
    
    var body : some View {
        NavigationView {
            List {
                NavigationLink(destination: BasicComponent()) {
                    Text("Basic components")
                }
                NavigationLink(destination: ValueSelector()) {
                    Text("Value Selector")
                }
            }
            .navigationBarTitle("SwiftUI Demo")
            .navigationBarItems(trailing: EditButton())
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
