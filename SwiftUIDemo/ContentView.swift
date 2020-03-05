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

struct AppView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Menu")
                }

            BasicComponent()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Order")
                }
        }
    }
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
                NavigationLink(destination: ViewBuilderDemo()) {
                    Text("View Builder")
                }
                NavigationLink(destination: Alert_ActionSheet()) {
                    Text("Alert & ActionSheet")
                }
                NavigationLink(destination: Anyview()) {
                    Text("AnyView")
                }
                NavigationLink(destination: AnimationList()) {
                    Text("Animations")
                }
                //.listStyle(PlainListStyle())
                //.listStyle(DefaultListStyle())
                //.listStyle(GroupedListStyle())
            }
            .navigationBarTitle("SwiftUI Demo")
            .navigationBarItems(trailing: EditButton())
            //.navigationViewStyle(DoubleColumnNavigationViewStyle())
            //.navigationViewStyle(StackNavigationViewStyle())
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
