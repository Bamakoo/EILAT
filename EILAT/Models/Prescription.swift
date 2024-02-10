//
//  Prescription.swift
//  EILAT
//
//  Created by Emma GAUBERT on 14/01/2024.
//

import Foundation
import SwiftData

@Model
final class Prescription {
    let patient: Patient
    let medicine: String
    var quantity: Double
    let date: Date
    
    init(patient: Patient, 
         medicine: String,
         quantity: Double,
         date: Date) {
        self.patient = patient
        self.medicine = medicine
        self.quantity = quantity
        self.date = date
    }
}
