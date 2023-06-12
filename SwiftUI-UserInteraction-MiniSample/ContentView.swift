//
//  ContentView.swift
//  SwiftUI-UserInteraction-MiniSample
//
//  Created by ekayaint on 11.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var alert = false
    var body: some View {
        VStack(spacing: 100) {
            Button("Alert") {
                alert = true
            }.alert("Title",isPresented: $alert, actions: {
                Button("Cancel", role: .cancel, action: {
                    print("Cancel selected.")
                })
                
                Button("Ok", role: .destructive, action: {
                    print("Ok selected.")
                })
            }, message: { Text("Sample Content Text") })
            
            
            Button("Action Shhet") {
                
            }
            
            Text("Context Menu")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
