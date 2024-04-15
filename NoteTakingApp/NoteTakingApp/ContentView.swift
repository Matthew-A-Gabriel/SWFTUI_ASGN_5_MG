//
//  ContentView.swift
//  NoteTakingApp
//
//  Created by StudentAM on 4/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView(content: {
            VStack {
                HStack {
                    Text("NOTES")
                        .font(.title)
                        .fontWeight(.bold)
                        .ignoresSafeArea()
                }
                Spacer()
    //            Text Thing here, the box uggh thing.
                    
    //            End

                NavigationLink(destination: {
                        NewNoteView()
                    }, label: {
                    Text("Add Task")
                        .frame(width:200, height: 125)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .padding(.horizontal, 120)
                        .background(.blue)
                        .cornerRadius(10)
                        .font(.system(size: 30))
                    })
                .position(CGPoint(x: 175.0, y: 660.0))
            }.frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        })
        .navigationBarBackButtonHidden(true)

    }
}
#Preview {
    ContentView()
}
