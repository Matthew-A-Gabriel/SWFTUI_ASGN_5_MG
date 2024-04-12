//
//  DetailNoteView.swift
//  NoteTakingApp
//
//  Created by StudentAM on 4/11/24.
//

import SwiftUI

struct DetailNoteView: View {
    @State var HeadingText = "Placeholder"
    var body: some View {
        VStack {
            HStack {
                Text("\(HeadingText)")
                    .font(.title)
                    .fontWeight(.bold)
            }
            Spacer()
    //            Text Thing here, the box uggh thing.
                
    //            End

        }.frame(maxWidth: .infinity, alignment: .leading)
            .padding()
    }
}
#Preview {
    DetailNoteView()
}
