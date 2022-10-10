//
//  ServiceLocator.swift
//  DZ3
//
//  Created by Alish Aidarkhan on 29.09.2022.
//

import Foundation

// Сервис локатор хранит в себе заинжектнутные сервисы
class ServiceLocator {
    // Singleton
    static let shared = ServiceLocator()
    
    // Массив сервисов
    lazy var services: [String: AnyObject] = {
        return [String: AnyObject]()
    }()
    
    // Добавляет единственную копию сервиса в Dictionary
    func addServices <T: AnyObject> (service: T) {
        let key = String(describing: T.self)
        if services[key] == nil {
            services[key] = service
        }
    }
    
    // Возвращает инжекнутый сервис по своему типу
    func resolve<T: AnyObject>(type: T.Type) -> T? {
        let key = String(describing: type)
        return services[key] as? T
    }
}
