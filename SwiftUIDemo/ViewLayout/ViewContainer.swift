//
//  ViewContainer.swift
//  SwiftUIDemo
//
//  Created by Hardik.Ramoliya on 16/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct ViewContainer: View {
    var body: some View {
            VStack {
            Group {
                Text("Line")
                Text("Line")
                Text("Line")
                Text("Line")
                Text("Line")
                Text("Line")
            }

            Group {
                Text("Line1")
                Text("Line1")
                Text("Line1")
                Text("Line1")
                Text("Line1")
            }
        }

    }
}

struct ViewContainer_Previews: PreviewProvider {
    static var previews: some View {
        ViewContainer()
    }
}
