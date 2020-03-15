//
//  ObservedObj.swift
//  SwiftUIDemo
//
//  Created by Hardik Ramolia on 15/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

class UserSettings: ObservableObject {
    @Published var score = 0
}

struct ObservedObj: View {
    @ObservedObject var settings = UserSettings()

    var body: some View {
        VStack {
            Text("Your score is \(settings.score)")
            Button(action: {
                self.settings.score += 1
            }) {
                Text("Increase Score")
            }
        }
    }
}

struct ObservedObj_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObj()
    }
}
