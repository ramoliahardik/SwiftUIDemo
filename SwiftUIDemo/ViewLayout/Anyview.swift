//
//  Anyview.swift
//  SwiftUIDemo
//
//  Created by Hardik Ramolia on 06/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct Anyview: View {
    var body: some View {
        if Bool.random() {
            return AnyView(Image("image1"))
        } else {
            return AnyView(Text("Better luck next time"))
        }
    }
}

struct Anyview_Previews: PreviewProvider {
    static var previews: some View {
        Anyview()
    }
}
