//
//  BasicComponent.swift
//  SwiftUIDemo
//
//  Created by Hardik Ramolia on 04/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct BasicComponent: View {
    
    @State private var name: String = "Hardik"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("This is text")
                .font(.title)
            HStack {
                Text("This is HStack text1")
                    .font(.subheadline)
                Text("This is HStack text2")
                    .font(.subheadline)
            }
            Image("image1").clipShape(Circle())
            Button(action: {
                print("Button pressed..")
            }) {
                Text("Button Text")
            }
            Button(action: {
                print("Button pressed..")
            }) {
                Text("Button Text")
            }
            
        }
    }
}

struct BasicComponent_Previews: PreviewProvider {
    static var previews: some View {
        BasicComponent()
    }
}
