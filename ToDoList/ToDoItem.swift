//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Dagmar Beckel on 7/18/23.
//

import Foundation

class ToDoItem{
    var title = ""
    var isImportant: Bool = false
    
    init(title: String, isImportant: Bool = false){
        self.title = title
        self.isImportant = isImportant
    }    
}

