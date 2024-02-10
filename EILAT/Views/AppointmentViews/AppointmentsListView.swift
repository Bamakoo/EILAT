//
//  AppointmentsListView.swift
//  EILAT
//
//  Created by Emma GAUBERT on 21/01/2024.
//

import SwiftUI
import SwiftData

struct AppointmentsListView: View {
    
    @Query(sort: \Appointment.date, order: .forward) private var appointments: [Appointment]
    @State private var viewModel = ContentViewViewModel()
    
    private var dateFormatter: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter
    }
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(appointments) { appointment in
                    NavigationLink {
                        AppointmentListDetailView(appointment: appointment)
                    } label: {
                        Text(dateFormatter.string(from: appointment.date))
                    }
                }
            }
            .toolbar {
                MainToolbar(viewModel: viewModel)
            }
        }
        .toolbar {
            MainToolbar(viewModel: viewModel)
        }
        .sheet(isPresented: $viewModel.isDisplayingNewPatientSheet) {
            NewPatientView()
        }
        .sheet(isPresented: $viewModel.isDisplayingNewAppointmentSheet) {
            NewAppointmentSheetView()
        }
        .sheet(isPresented: $viewModel.isDisplayingNewPrescritpionSheet) {
            NewPrescriptionSheetView()
        }
    }
}

#Preview {
    AppointmentsListView()
}
