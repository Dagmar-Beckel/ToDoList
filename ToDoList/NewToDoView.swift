//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Dagmar Beckel on 7/18/23.
//

import SwiftUI

struct NewToDoView: View {
    @State var title: String
    @State var isImportant: Bool
    
    var body: some View {
        VStack{
            Text("Task title:")
                .font(.title3)
            
            TextField("Enter the task description...", text: $title)
            
            Toggle(isOn: $isImportant) {
                Text("Is it Important?")
            }
            
            Button(action:{
                
            }){
                Text("Add")
            }
        }
        .padding()
        
    }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false)
    }
}
