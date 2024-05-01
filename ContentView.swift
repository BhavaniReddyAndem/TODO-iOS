//
//  ContentView.swift
//  ToDo
//
//  Created by Bhavani Reddy Navure on 4/29/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showCreate = false
    var body: some View {
        NavigationStack{
            Text("Hello, world!")
                .toolbar {
                    ToolbarItem {
                        Button(action: {
                            showCreate.toggle()
                        }, label: {
                            Label("Add Item", systemImage: "plus")
                        })
                        
                    }
                }
                .sheet(isPresented: $showCreate,
                       content: {
                    NavigationStack {
                        CreateView()
                    }
                    .presentationDetents([.medium])
                })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
