//
//  NewNoteView.swift
//  NoteTakingApp
//
//  Created by StudentAM on 4/11/24.
//

import SwiftUI

struct NewNoteView: View {
    @State private var newNoteContent = ""
    var body: some View {
        NavigationView(content: {
            VStack {
                HStack {
                    Text("New Note")
                        .font(.title)
                        .fontWeight(.bold)
                }
                Spacer()
    //            Text Thing here, the box uggh thing.
                Text("\(newNoteContent)")
                    .frame(minWidth: 300, minHeight: 550)
                    .border(Color.black)
                    .padding()
    //            End

                NavigationLink(destination: {
                        ContentView()
                    }, label: {
                    Text("Add Note")
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .padding(.horizontal, 40)
                        .background(.blue)
                        .cornerRadius(10)
                        .frame(maxWidth: .infinity)
                        .font(.system(size: 20))
                    })
            }.frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        })
    }
}

#Preview {
    NewNoteView()
}
