//
//  PatientDetailedView.swift
//  EILAT
//
//  Created by Emma GAUBERT on 27/01/2024.
//

import SwiftUI
import SwiftData

struct PatientDetailedView: View {
    
    @Bindable private(set) var patient: Patient
    
    var body: some View {
        List {
            let sortedAppointments = patient.appointments.sorted(using: KeyPathComparator(\Appointment.date)) 
            ForEach(sortedAppointments) { appointment in
                NavigationLink {
                    Text("hello")
                } label: {
                    Text(appointment.date, format: .dateTime.month().day().year())
                }
            }
        }
        .navigationTitle("Patients appointments")
    }
}

#Preview {
    PatientDetailedView(patient: .init(firstName: "Fake", lastName: "Name", address: "Rotterdam"))
}
