//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Dagmar Beckel on 7/18/23.
//

import SwiftUI

struct NewToDoView: View {
    @Environment(\.managedObjectContext) var context
    
    @State var title: String
    @State var isImportant: Bool
    @State var isAssignment: Bool
    @State var isProject: Bool
    
    var body: some View {
        VStack(){
            Text("Task title:")
                .font(.title3)
            
            TextField("Enter the task description...", text: $title)
                .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)

            Toggle(isOn: $isAssignment) {
                Text("Is it an Assignment?")
            }
            Toggle(isOn: $isProject){
                Text("Is it a Project or Essay?")
            }
            Toggle(isOn: $isImportant) {
                Text("Is it Important?")
            }
            
            Button(action:{
                self.addTask(title: self.title, isImportant: self.isImportant)
            }){
                Text("Add")
            }
        }
        .padding()
        
    }
    private func addTask(title: String, isImportant: Bool = false) {
        let task = ToDo(context: context)
        task.id = UUID()
        task.title = title
        task.isImportant = isImportant
        do{
            try context.save()
        }catch{
            print(error)
        }
    }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false, isAssignment: false, isProject: false)
        
    }
}
