//
//  DetailNoteView.swift
//  NoteTakingApp
//
//  Created by StudentAM on 4/11/24.
//

import SwiftUI

struct DetailNoteView: View {
//    call notes
    @Binding var notes: [Note]
    @State var noteVar: Note
    var body: some View {
        VStack {
//            Let's put the title here
            HStack {
                Text("\(noteVar.leTitle)")
                    .font(.title)
                    .fontWeight(.bold)
            }
//            S P A C E
            Spacer()
    //            Text Thing here, views the content.
            Text("\(noteVar.content)")
                .multilineTextAlignment(.center)
                .frame(width: 350, height: 600)
                .background(.gray.opacity(0.15))
                .cornerRadius(25)

                .padding()
                .lineLimit(nil)
    //            End

        }.frame(maxWidth: .infinity, alignment: .leading)
            .padding()
    }
}
#Preview {
    DetailNoteView(notes: .constant([]), noteVar: Note(leTitle: "String", content: "String2"))
}
