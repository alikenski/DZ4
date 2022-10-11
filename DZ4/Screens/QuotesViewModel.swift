//
//  QuotesViewModel.swift
//  DZ4
//
//  Created by Alish Aidarkhan on 05.10.2022.
//

import Foundation
import UDWrapper

class QuotesViewModel: ObservableObject {    
    @Published var selectedAnime = "Naruto"
    
    @Injected
    var userDefaults: UDWrapper?
    
    init() {
        if let anime = userDefaults?.getLastSelectedAnime() {
            selectedAnime = anime
        }
    }
    
    func saveAnime() {
        userDefaults?.saveLastSelectedAnime(selectedAnime)
    }
}
