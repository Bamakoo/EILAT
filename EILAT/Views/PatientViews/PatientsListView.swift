//
//  PatientsListView.swift
//  EILAT
//
//  Created by Emma GAUBERT on 21/01/2024.
//

import SwiftUI
import SwiftData

struct PatientsListView: View {
    @Environment(\.modelContext) private var context
    @Query var patients: [Patient]
    @State var viewModel = ContentViewViewModel()
    @State private var selectedPatient: Patient?
    
    private func deletePatient(_ indexSet: IndexSet) {
        indexSet.forEach { index in
            context.delete(patients[index])
        }
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(patients) { patient in
                    NavigationLink {
                        PatientDetailedView(patient: patient)
                    } label: {
                        HStack {
                            Image(systemName: "info.circle")
                                .onTapGesture {
                                    selectedPatient = patient
                                }
                            Text(patient.firstName + " " + patient.lastName)
                        }
                    }
                }
                .onDelete(perform: deletePatient)
            }
            .toolbar {
                MainToolbar(viewModel: viewModel)
            }
            .navigationTitle("Patients")
            .navigationBarTitleDisplayMode(.inline)
        }
        .sheet(item: $selectedPatient, content: { patient in
            UpdatePatientSheetView(patient: patient)
        })
        
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
    NavigationStack {
        PatientsListView()
    }
}
