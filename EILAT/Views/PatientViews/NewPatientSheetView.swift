//
//  NewPatientSheetView.swift
//  EILAT
//
//  Created by Emma GAUBERT on 20/01/2024.
//

import SwiftUI

struct NewPatientView: View {
    
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) var dismiss
    
    // MARK: Patient data
    @State private var patientFirstName = String()
    @State private var patientLastName = String()
    @State private var patientAddress = String()

    var body: some View {
        Form {
            TextField(text: $patientFirstName) {
                Text("Enter patient's first name")
            }
            TextField(text: $patientLastName) {
                Text("Enter patient's second name")
            }
            TextField(text: $patientAddress) {
                Text("Enter patients' address")
            }
            Button {
                guard !patientFirstName.isEmpty,
                      !patientLastName.isEmpty,
                      !patientAddress.isEmpty else {
                    return
                }
                let patient: Patient = .init(firstName: patientFirstName,
                                             lastName: patientLastName,
                                             address: patientAddress)
                context.insert(patient)
                dismiss()
            } label: {
                Text("Create New patient \(patientFirstName + " " + patientLastName)")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    NewPatientView()
}
