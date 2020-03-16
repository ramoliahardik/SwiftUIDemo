//
//  Localized.swift
//  SwiftUIDemo
//
//  Created by Hardik.Ramoliya on 16/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct Localized: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct Localized_Previews: PreviewProvider {
    static var previews: some View {
        Localized().environment(\.locale, .init(identifier: "de"))
    }
}
