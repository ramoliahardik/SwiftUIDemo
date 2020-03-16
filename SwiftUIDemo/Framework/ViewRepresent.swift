//
//  ViewRepresent.swift
//  SwiftUIDemo
//
//  Created by Hardik.Ramoliya on 16/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI
import WebKit

struct Webview: UIViewRepresentable {
    let request: URLRequest
    
    func makeUIView(context: UIViewRepresentableContext<Webview>) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}

struct ViewRepresent: View {
    var body: some View {
        NavigationView {
            VStack {
                Webview(request: URLRequest(url: URL(string: "https://www.google.com")!))
            }
        }
    }
}

struct ViewRepresent_Previews: PreviewProvider {
    static var previews: some View {
        ViewRepresent()
    }
}
