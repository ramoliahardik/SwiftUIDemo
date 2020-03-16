//
//  FetchData.swift
//  SwiftUIDemo
//
//  Created by Hardik.Ramoliya on 16/03/20.
//  Copyright © 2020 Hardik Ramolia. All rights reserved.
//

import SwiftUI

struct TaskRow: View {
    var task: Task

    var body: some View {
        Text(task.name ?? "No name given")
    }
}

struct FetchData: View {
    @Environment(\.managedObjectContext) var context

    @FetchRequest(
        entity: Task.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \Task.dateAdded, ascending: false)],
        predicate: NSPredicate(format: "isComplete == %@", NSNumber(value: false))
    ) var notCompletedTasks: FetchedResults<Task>

    @State private var taskName: String = ""
    
    var body: some View {
        VStack {
            HStack{
                TextField("Task Name", text: $taskName)
                Button(action: {
                    self.addTask()
                }){
                    Text("Add Task")
                }
            }
            List {
                ForEach(notCompletedTasks){ task in
                    TaskRow(task: task)
                }
            }
        }
    }
    
    func addTask() {
        let newTask = Task(context: context)
        newTask.id = UUID()
        newTask.isComplete = false
        newTask.name = taskName
        newTask.dateAdded = Date()

        do {
            try context.save()
        } catch {
            print(error)
        }
    }
}

struct FetchData_Previews: PreviewProvider {
    static var previews: some View {
        FetchData()
    }
}
