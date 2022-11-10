//
//  ScholarFoxv1_0App.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 9/13/22.
//

import SwiftUI

@main
struct ScholarFoxv1_0App: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                Universities()
                    .tabItem {
                        Label("University View",systemImage: "books.vertical.fill" )
                    }
                user_assumptions()
                    .tabItem {
                        Label("Assumptions", systemImage: "greaterthan.circle")
                    }
            }
        }
    }
}
