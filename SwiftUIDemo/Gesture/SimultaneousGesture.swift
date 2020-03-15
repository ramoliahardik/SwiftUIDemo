//
//  SimultaneousGesture.swift
//  SwiftUIDemo
//
//  Created by Hardik Ramolia on 15/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct SimultaneousGesture: View {
    @State var magnificationValue: CGFloat = CGFloat(1)
    @State var rotationValue: Angle = .zero
        
    var body: some View {
        Rectangle()
            .foregroundColor(Color.purple)
            .cornerRadius(10)
            .scaleEffect(magnificationValue)
            .rotationEffect(rotationValue)
            .frame(width: 200, height: 200, alignment: .center)
            .gesture(MagnificationGesture()
                .onChanged { value in
                    self.magnificationValue = value
            }
            .simultaneously(with: RotationGesture().onChanged { value in
                self.rotationValue = value
            }))
    }
}

struct SimultaneousGesture_Previews: PreviewProvider {
    static var previews: some View {
        SimultaneousGesture()
    }
}
