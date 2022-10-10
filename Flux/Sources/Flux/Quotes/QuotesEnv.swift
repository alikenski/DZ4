//
//  File.swift
//  
//
//  Created by Alish Aidarkhan on 10.10.2022.
//

import Foundation
import Network

public class QuotesEnv {
    public init() {}
    
    let apiService = Routes()
    
    func getQuotes(of anime: String, page: Int = 0) async throws -> [QuoteModel] {
        return try await withCheckedThrowingContinuation { continuation in
            apiService.fetchQuotes(of: anime, page: page, completion: { quotes in
                continuation.resume(returning: quotes)
            })
        }
    }
}
