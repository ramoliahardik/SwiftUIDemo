//
//  Preferencekey.swift
//  SwiftUIDemo
//
//  Created by Hardik.Ramoliya on 16/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct NavigationBarTitleKey: PreferenceKey {
    static var defaultValue: String = ""

    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
}

extension View {
    func navigationBarTitle(_ title: String) -> some View {
        self.preference(key: NavigationBarTitleKey.self, value: title)
    }
}

struct Preferencekey: View {
    let messages: [String] = ["ABC", "XYZ"]

    var body: some View {
        NavigationView {
            List(messages, id: \.self) { message in
                Text(message)
            }.navigationBarTitle("Messages")
        }.onPreferenceChange(NavigationBarTitleKey.self) { title in
            // you have to set title value in the navigation bar here
            print(title)
        }
    }
}

struct Preferencekey_Previews: PreviewProvider {
    static var previews: some View {
        Preferencekey(
        
        )
    }
}
