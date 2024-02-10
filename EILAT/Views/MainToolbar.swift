//
//  MainToolbar.swift
//  EILAT
//
//  Created by Emma GAUBERT on 20/01/2024.
//

import Foundation
import SwiftUI

struct MainToolbar: ToolbarContent {
    
    @Bindable var viewModel: ContentViewViewModel

    var body: some ToolbarContent {
        ToolbarItem(placement: .primaryAction) {
            Menu {
                Button {
                    viewModel.isDisplayingNewPatientSheet.toggle()
                } label: {
                    Text("New patient")
                }
                Button {
                    viewModel.isDisplayingNewAppointmentSheet.toggle()
                } label: {
                    Text("New appointment")
                }
                Button {
                    viewModel.isDisplayingNewPrescritpionSheet.toggle()
                } label: {
                    Text("New prescription")
                }
            } label: {
                Image(systemName: "plus")
            }
        }
    }
}
