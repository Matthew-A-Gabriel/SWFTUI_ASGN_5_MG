//
//  ContentView.swift
//  NoteTakingApp
//
//  Created by StudentAM on 4/10/24.
//

import SwiftUI

struct Note{
    var leTitle: String
    var content: String
}


struct ContentView: View {
    @State private var numberOfNotes : Int = 0
    @State private var notesMadeTitle : [String] = ["ahhhhh", "agfds"]
    @State private var notesMadeContents : [String] = [""]
    @State private var notes: [Note] = []
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
                
                   
                List{
                    ForEach(notes.indices, id: \.self){index in
                        Text("Title: \(notes[index].leTitle)")
                        Text("Content: \(notes[index].content)")
                    }
                    .onDelete(perform: DeleteItem)
                    .frame(width: 100, height: 50)
                }
    //            End

                NavigationLink(destination: {
                    NewNoteView(notes: $notes)
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
                .position(CGPoint(x: 175.0, y: 325.0))
            }.frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        })
        .navigationBarBackButtonHidden(true)

    }
    func DeleteItem(offset: IndexSet){
        notes.remove(atOffsets: offset)
        notes.remove(atOffsets: offset)
    }
}
#Preview {
    ContentView()
}
