//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by RPS on 10/06/24.
//

import SwiftUI

@main
struct ToDoAppApp: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
