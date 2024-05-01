//
//  CreateView.swift
//  ToDo
//
//  Created by Bhavani Reddy Navure on 4/29/24.
//

import SwiftUI

struct CreateView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var context
    @State private var item = ToDoItem()
    var body: some View {
        List {
            TextField("Enter task name", text: $item.title)
            DatePicker("Choose a Date", selection: $item.timeStamp)
            Toggle("Important?", isOn: $item.isCritical)
            Button("Create") {
                withAnimation {
                    context.insert(item)
                }
                dismiss()
            }
            
        } .navigationTitle("Create ToDo")
    }
}

#Preview {
    CreateView()
        .modelContainer(for: ToDoItem.self)
}
