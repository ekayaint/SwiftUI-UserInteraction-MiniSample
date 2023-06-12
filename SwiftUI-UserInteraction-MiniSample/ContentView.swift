//
//  ContentView.swift
//  SwiftUI-UserInteraction-MiniSample
//
//  Created by ekayaint on 11.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var alert = false
    @State private var actionSheet = false
    
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
            
            
            Button("Action Sheet") {
                actionSheet = true
            }.actionSheet(isPresented: $actionSheet) {
                ActionSheet(title: Text("Title"), message: Text("Sample Text"),
                    buttons: [
                        .default(Text("Cancel"),action: {
                            print("Cancel Selected")
                        }),
                        .destructive(Text("Ok"),action: {
                            print("Ok Selected")
                        })
                    ]
                )
            }
            
            Text("Context Menu")
                .contextMenu{
                    Button {
                        print("Take Photo")
                    }label: {
                        Label("Take Photo", systemImage: "camera")
                    }
                    
                    Button {
                        print("Record Video")
                    }label: {
                        Label("Record Video", systemImage: "video")
                    }
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
