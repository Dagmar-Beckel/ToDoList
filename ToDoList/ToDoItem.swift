//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Dagmar Beckel on 7/18/23.
//

import Foundation

class ToDoItem: Identifiable{
    var id = UUID()
    
    var title: String
    var isImportant: Bool
    
    init(title: String, isImportant: Bool = false){
        self.title = title
        self.isImportant = isImportant
    }    
}

