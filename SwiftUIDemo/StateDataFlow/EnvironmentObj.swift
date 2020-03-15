//
//  EnvironmentObj.swift
//  SwiftUIDemo
//
//  Created by Hardik Ramolia on 15/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct EnvironmentObj: View {
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    self.settings.score += 1
                }) {
                    Text("Increase Score")
                }
                
                NavigationLink(destination: DetailView()) {
                    Text("Show Detail View")
                }
            }
        }
    }
}

struct DetailView: View {
    @EnvironmentObject var settings: UserSettings

    var body: some View {
        // A text view that reads from the environment settings
        Text("Score: \(settings.score)")
    }
}

struct EnvironmentObj_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObj()
    }
}
