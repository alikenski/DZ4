//
//  ServiceConfigurator.swift
//  DZ3
//
//  Created by Alish Aidarkhan on 29.09.2022.
//

import Foundation
import UI

class ServiceConfigurator {
    static let shared = ServiceConfigurator()
    
    func register() {
        ServiceLocator.shared.addServices(service: )
    }
}
