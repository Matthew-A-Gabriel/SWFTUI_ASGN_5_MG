//
//  ContentView.swift
//  NoteTakingApp
//
//  Created by StudentAM on 4/10/24.
//

import SwiftUI

//Note Struct for the Data Storage and all that
struct Note{
    var leTitle: String
    var content: String
}

struct ContentView: View {
//    Call Struct into this view
    @State private var notes: [Note] = []
    var body: some View {
//        Nav View so I can have Nav Links
        NavigationView(content: {
            VStack {
                HStack {
//                    tbh idk why I put a HStack, This is the title right here
                    Text("NOTES")
                        .font(.title)
                        .fontWeight(.bold)
                        .ignoresSafeArea()
                }
//                space
                Spacer()
//                   lists all the notes you make, you can then view them.
                List{
                    ForEach(notes.indices, id: \.self){
                        index in
                        NavigationLink("\(notes[index].leTitle)", destination: DetailNoteView(notes: $notes, noteVar: notes[index]))
                            .font(.title)
                        Text("\(notes[index].content)")
                            
                    }
                    .onDelete(perform: DeleteItem)
                    .frame(width: 100, height: 50)
                }
//              This one is for going to the page that adds the Notes
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
//    when you delete , it deletes
    }
    func DeleteItem(offset: IndexSet){
        notes.remove(atOffsets: offset)
        notes.remove(atOffsets: offset)
    }
}
#Preview {
    ContentView()
}
