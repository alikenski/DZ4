//
//  DZ4App.swift
//  DZ4
//
//  Created by Alish Aidarkhan on 05.10.2022.
//

import SwiftUI

@main
struct DZ4App: App {
    
    init() {
        ServiceConfigurator.shared.register()
    }
    
    var body: some Scene {
        WindowGroup {
            AppRouteScreen()
        }
    }
}
