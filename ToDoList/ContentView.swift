//
//  ContentView.swift
//  ToDoList
//
//  Created by Dagmar Beckel on 7/18/23.
//

import SwiftUI

struct ContentView: View {
    @State var toDoItems: [ToDoItem] = []
    @State private var showNewTask = false
    
    var body: some View {
        VStack{
            HStack{
                Text("To Do List")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Button(action: {
                    self.showNewTask = true
                }){
                Text("+")
                }
            }
            .padding()
            Spacer()
        }
        List {
            ForEach(toDoItems){ toDoItem in
                if toDoItem.isImportant == true {
                    Text("‼️" + toDoItem.title)
                } else {
                    Text(toDoItem.title)
                }
            }
        }
        .listStyle(.plain)
        
        if showNewTask {
            NewToDoView(toDoItems: $toDoItems, title: "", isImportant: false)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
