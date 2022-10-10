//
//  File.swift
//  
//
//  Created by Alish Aidarkhan on 10.10.2022.
//

import Foundation
import Network

public struct QuotesState: Equatable {
    public init() {}
    
    public var quotes: [QuoteModel] = []
    public var isLoading = false
    public var selectedAnime = "Naruto"
    public var page = 1
}
