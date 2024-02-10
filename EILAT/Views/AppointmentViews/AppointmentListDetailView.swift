//
//  AppointmentListRow.swift
//  EILAT
//
//  Created by Emma GAUBERT on 28/01/2024.
//

import SwiftUI

struct AppointmentListDetailView: View {
    
    @Bindable var appointment: Appointment
    
    var body: some View {
        Text(appointment.patient?.firstName ?? "Fail")
        Spacer()
    }
}

#Preview {
    AppointmentListDetailView(appointment: .init(date: Date.now))
}
