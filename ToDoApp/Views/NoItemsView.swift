//
//  NoItemsView.swift
//  ToDoApp
//
//  Created by RPS on 10/06/24.
//

import SwiftUI

struct NoItemsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10){
                Text("No Items")
                    .foregroundColor(.black.opacity(0.7))
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you productive person? I think you should click add button and bunch of items to todo list!")
                    .foregroundColor(.gray.opacity(0.9))
                NavigationLink(destination: AddView(),
                               label: {
                                    Text("Add Items")
                                })
            }
            .multilineTextAlignment(.center)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(40)
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NoItemsView()
                .navigationTitle("ToDo List")
        }
        
        
    }
}
