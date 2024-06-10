//
//  itemModel.swift
//  ToDoApp
//
//  Created by RPS on 10/06/24.
//

import Foundation

struct ItemModel: Hashable, Codable {
    let id: String
    let title: String
    let iscompleted: Bool
    
    init(id: String = UUID().uuidString,title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.iscompleted = isCompleted
    }
    
    func updateComplition() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !iscompleted)
    }
}
