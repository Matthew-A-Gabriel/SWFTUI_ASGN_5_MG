//
//  NewNoteView.swift
//  NoteTakingApp
//
//  Created by StudentAM on 4/11/24.
//

import SwiftUI

struct NewNoteView: View {
    @Binding var notes: [Note]
    @State var noteTitle: String = ""
    @State var noteContent: String = ""
    var customColor : Color = Color(red: 220/255, green: 220/255, blue: 220/255)
    var body: some View {
        NavigationView(content: {
            VStack {
                Text("New Note")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                HStack {
                    TextField("Title", text: $noteTitle)
                        .background(customColor)
                        .frame(maxWidth: 300, minHeight: 40 )
                        .ignoresSafeArea()
                        .cornerRadius(10)
                    
                }
                Spacer()
    //            Text Thing here, the box uggh thing.
                TextField("Enter Content Here", text: $noteContent, axis: .vertical)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 300, maxHeight: 550)
                    .border(Color.black)
                    .padding()
                    .lineLimit(nil)
    //            End

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
