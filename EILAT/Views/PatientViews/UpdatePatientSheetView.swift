//
//  UpdatePatientSheetView.swift
//  EILAT
//
//  Created by Emma GAUBERT on 26/01/2024.
//

import SwiftUI

struct UpdatePatientSheetView: View {
    
    @Bindable var patient: Patient
    
    var body: some View {
        Form {
            TextField(String(), text: $patient.firstName)
            TextField(String(), text: $patient.lastName)
        }
    }
}

#Preview {
    UpdatePatientSheetView(patient: .init(firstName: "Alice", lastName: "Monroe", address: "Nowhere"))
}
