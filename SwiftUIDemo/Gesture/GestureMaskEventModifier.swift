//
//  GestureMaskEventModifier.swift
//  SwiftUIDemo
//
//  Created by Hardik Ramolia on 15/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct GestureMaskEventModifier: View {
    @State var counter: Int = 0
    @State var counterTapIsEnabled = true
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Count: \(counter)")
                .overlay(tapOverlay)
                .gesture(tapGesture, including: tapGestureMask)
            Button(buttonString) {
                self.counterTapIsEnabled.toggle()
            }
        }
    }
    
    private var tapOverlay: some View {
        return Circle()
            .foregroundColor(Color.red.opacity(overlayOpacity))
    }
    
    private var overlayOpacity: Double {
        return counterTapIsEnabled ? 0.2 : 0.0
    }
    
    private var tapGesture: some Gesture {
        return TapGesture()
            .onEnded { self.counter += 1 }
    }
    
    private var tapGestureMask: GestureMask {
        return counterTapIsEnabled ? .all : .subviews
    }
    
    private var buttonString: String {
        if counterTapIsEnabled {
            return "Turn Taps Off"
        } else {
            return "Turn Taps On"
        }
    }
}

struct GestureMaskEventModifier_Previews: PreviewProvider {
    static var previews: some View {
        GestureMaskEventModifier()
    }
}
