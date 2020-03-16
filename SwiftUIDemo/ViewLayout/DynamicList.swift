//
//  DynamicList.swift
//  SwiftUIDemo
//
//  Created by Hardik.Ramoliya on 16/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct Student: Identifiable {
    var id = UUID()
    var name: String
}

struct StudentsRow: View {
    var student: Student

    var body: some View {
        Text(student.name)
    }
}

struct DynamicList: View {
    
    let students: [Student] = [Student(name: "ABC"),
                               Student(name: "DEF"),
                               Student(name: "XYZ")]
    
    var body: some View {
        
        return List() {
            Section(header: Text("Section Header")) {
                ForEach(students) { student in
                    StudentsRow(student: student)
                }
            }
        }
    }
}

struct DynamicList_Previews: PreviewProvider {
    static var previews: some View {
        DynamicList()
    }
}
