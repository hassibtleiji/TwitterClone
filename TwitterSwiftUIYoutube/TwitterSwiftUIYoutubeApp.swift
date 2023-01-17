//
//  TwitterSwiftUIApp.swift
//  TwitterSwiftUI
//
//  Created by Hassib Tleiji on 1/9/23.
//

import SwiftUI
import Firebase

@main
struct TwitterSwiftUIApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
               ContentView()
            }
            .environmentObject(viewModel)
        }
    }
}
