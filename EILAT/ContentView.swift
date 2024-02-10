//
//  ContentView.swift
//  EILAT
//
//  Created by Emma GAUBERT on 14/01/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    var body: some View {
        TabView {
            PatientsListView()
                .tabItem {
                    Image(systemName: "person")
                }
            AppointmentsListView()
                .tabItem {
                    Image(systemName: "calendar")
                }
        }
    }
}
#Preview {
    ContentView()
}
