//
//  ControllerRepresent.swift
//  SwiftUIDemo
//
//  Created by Hardik.Ramoliya on 16/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct ControllerRepresent: View {
    @State private var image: Image?
    @State private var inputimage: UIImage?
    @State private var filterIntensity = false
    @State private var showImagePicker = false
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Rectangle()
                        .fill(Color.secondary)
                    if image != nil {
                        image?.resizable()
                        image.scaledToFit()
                    }
                    else {
                        Text("Tap to select a picture")
                            .foregroundColor(.white)
                            .font(.headline)
                    }
                }
                .onTapGesture {
                    self.showImagePicker = true
                }
                
//                HStack {
//                    Text("Intensity")
//                    Slider(value: self.$filterIntensity)
//                }
                
                
                
//                .padding(.vertical)
            }
            .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
                Imagepicker(image: self.$inputimage)
            }
        }
    }
    
    func loadImage() {
        guard let inputimage = inputimage else { return }
        image = Image(uiImage: inputimage)
    }
}

struct Represent_Previews: PreviewProvider {
    static var previews: some View {
        ControllerRepresent()
    }
}
