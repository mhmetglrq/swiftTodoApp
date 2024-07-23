//
//  todoApp.swift
//  todo
//
//  Created by Mehmet Güler on 23.07.2024.
//

import SwiftUI
import FirebaseCore

@main
struct todoApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
