//
//  Alert_ActionSheet.swift
//  SwiftUIDemo
//
//  Created by Hardik Ramolia on 04/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct Alert_ActionSheet: View {
    @State private var showingAlert = false
    @State private var showingSheet = false

    var body: some View {
        VStack {
            Button(action: {
                self.showingAlert = true
            }) {
                Text("Show Alert")
            }
            .alert(isPresented:$showingAlert) {
                Alert(title: Text("Are you sure you want to delete this?"), message: Text("There is no undo"), primaryButton: .destructive(Text("Delete")) {
                    print("Deleting...")
                    }, secondaryButton: .cancel())
            }
            
            Button(action: {
                self.showingSheet = true
            }) {
                Text("Show Action Sheet")
            }
            .actionSheet(isPresented: $showingSheet) {
                ActionSheet(title: Text("What do you want to do?"), message: Text("There's only one choice..."), buttons: [.default(Text("Dismiss Action Sheet"))])
            }
        }
    }
}

struct Alert_ActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        Alert_ActionSheet()
    }
}
