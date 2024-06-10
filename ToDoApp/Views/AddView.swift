//
//  AddView.swift
//  ToDoApp
//
//  Created by RPS on 10/06/24.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textValue: String = ""
    var body: some View {
        ScrollView {
            VStack{
                TextField("Type somthing here...", text: $textValue)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(.gray.opacity(0.3))
                    .cornerRadius(10)
                Button(action: saveButton, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
        }
        .padding(14)
        .navigationTitle("Add an Item")
    }
    func saveButton() {
        listViewModel.addItem(title: textValue)
        presentationMode.wrappedValue.dismiss()
    }
}


