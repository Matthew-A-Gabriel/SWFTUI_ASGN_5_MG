//
//  NewNoteView.swift
//  NoteTakingApp
//
//  Created by StudentAM on 4/11/24.
//

import SwiftUI

struct NewNoteView: View {
//    Yippeee, Call notes, then save the stuff in NoteTitle and noteContent in order to save them in notes
    @Binding var notes: [Note]
    @State var noteTitle: String = ""
    @State var noteContent: String = ""
//    O.O Custom COloer? NooOOo WayY
    var customColor : Color = Color(red: 220/255, green: 220/255, blue: 220/255)
    var body: some View {
//        navi view for navi links, well, actually no, It used to have them but it still works just fine
        NavigationView(content: {
            VStack {
//                 Note page title thing
                Text("New Note")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                HStack {
//                  This is where you add the title
                    TextField("Title", text: $noteTitle)
                        .frame(width: 300, height: 60)
                        .background(customColor.opacity(0.35))
                        .ignoresSafeArea()
                        .cornerRadius(10)
                    
                }
//                S  P  A  C  E
                Spacer()
    //            this is for the content
                TextField("Enter Content Here", text: $noteContent, axis: .vertical)
                    .frame(width: 300, height: 500)
                    .multilineTextAlignment(.center)
                    .border(customColor.opacity(0.35), width: 20)
                    .cornerRadius(10)
                    .padding()
                    .lineLimit(nil)

//                This appends the stuff to notes
                Button(action: {
                    notes.append(Note(leTitle: noteTitle, content: noteContent))
                },label: {
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
    NewNoteView(notes: .constant([]))
}
