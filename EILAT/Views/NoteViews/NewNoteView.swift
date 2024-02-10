//
//  NewNoteView.swift
//  EILAT
//
//  Created by Emma GAUBERT on 27/01/2024.
//

import SwiftUI
import SwiftData

struct NewNoteView: View {
    
    @State private var noteContent = String()
    @State private var noteTitle = String()
    
    var body: some View {
        Form {
            Button {
//                let newNote: Note = .init(content: noteContent,
//                                          title: noteTitle)
            } label: {
                Text("Create new note")
            }
        }
    }
}

#Preview {
    NewNoteView()
}
