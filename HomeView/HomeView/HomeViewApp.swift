//
//  HomeViewApp.swift
//  HomeView
//
//  Created by iredefbmac_19 on 11/07/25.
//

import SwiftUI
import SwiftData

@main
struct HomeViewApp: App {
    var body: some Scene {
        WindowGroup {
            InicioView()
        }
        .modelContainer(for: [Pet.self])
    }
}
