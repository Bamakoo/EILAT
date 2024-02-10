//
//  EILATApp.swift
//  EILAT
//
//  Created by Emma GAUBERT on 14/01/2024.
//

import SwiftUI
import SwiftData

@main
struct EILATApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(
            for: [Patient.self, 
                  Appointment.self,
                  Prescription.self,
                  Note.self]
        )
    }
}
