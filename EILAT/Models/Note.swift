//
//  Note.swift
//  EILAT
//
//  Created by Emma GAUBERT on 26/01/2024.
//

import Foundation
import SwiftData

@Model
final class Note {
    let content: String
    let title: String
    
    init(content: String, 
         title: String) {
        self.content = content
        self.title = title
    }
}
