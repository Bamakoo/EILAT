//
//  NewAppointmentSheetView.swift
//  EILAT
//
//  Created by Emma GAUBERT on 20/01/2024.
//

import SwiftUI
import SwiftData

struct NewAppointmentSheetView: View {
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) var dismiss
    
    @State private var selectedAppointmentDate = Date()
    @State private var selectedPatient: Patient = .init(firstName: "Toby",
                                                        lastName: "Buchanan",
                                                        address: "Nowhere")
    
    @State private var addNote: Bool = false
    @State private var noteContent = String()
    @State private var noteTitle = String()
    
    @Query var patients: [Patient]
    
    var body: some View {
        Form {
            DatePicker(selection: $selectedAppointmentDate) {
                Text("Appointment date")
            }
            Picker("for patient", selection: $selectedPatient) {
                ForEach(patients, id: \.self) { patient in
                    Text(patient.firstName)
                }
            }
            Toggle("Add note?", isOn: $addNote)
            if addNote {
                TextField("Note Title", text: $noteTitle)
                TextField("Note Content", text: $noteContent)
            }
            Button {
                let appointment: Appointment = .init(date: selectedAppointmentDate)
                if !noteContent.isEmpty && !noteTitle.isEmpty {
                    appointment.note = Note(content: noteContent, title: noteTitle)
                }
                selectedPatient.appointments.append(appointment)
                dismiss()
            } label: {
                Text("Create new appointment")
            }
        }
    }
}

#Preview {
    NewAppointmentSheetView()
}
