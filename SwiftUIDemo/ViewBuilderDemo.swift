//
//  ViewBuilderDemo.swift
//  SwiftUIDemo
//
//  Created by Hardik Ramolia on 04/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let contect: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<rows) { row in
                HStack {
                    ForEach(0..<self.columns) { column in
                        self.contect(row, column)
                    }
                }
            }
        }
    }
    
    init(rows: Int, columns: Int, @ViewBuilder contect: @escaping (Int, Int) -> Content) {
        self.rows = rows
        self.columns = columns
        self.contect = contect
    }
}

struct PrimaryLabel: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.red)
            .foregroundColor(Color.white)
            .font(.largeTitle)
    }
}

struct ViewBuilderDemo: View {
    var body: some View {
        VStack {
            Text("Hello, SwiftUI")
                .modifier(PrimaryLabel())
            GridStack(rows: 4, columns: 4) { row, column in
                Image(systemName: "\(row * 4 + column).circle")
                Text("R\(row) C\(column)")
            }
        }
    }
}

struct ViewBuilderDemo_Previews: PreviewProvider {
    static var previews: some View {
        ViewBuilderDemo()
    }
}
