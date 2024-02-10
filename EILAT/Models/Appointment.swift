//
//  Appointment.swift
//  EILAT
//
//  Created by Emma GAUBERT on 14/01/2024.
//

import Foundation
import SwiftData

@Model
final class Appointment {
    var date: Date
    var note: Note?
    var patient: Patient?
    
    init(date: Date) {
        self.date = date
    }
}
