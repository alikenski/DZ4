//
//  File.swift
//  
//
//  Created by Alish Aidarkhan on 10.10.2022.
//

import Foundation
import ComposableArchitecture

public let reducer = Reducer<QuotesState, QuotesActions, QuotesEnv>() { state, action, environment in
    switch action {
    case .getQuotes:
        state.isLoading = true
        let selectedAnime = state.selectedAnime
        let page = state.page
        return .task {
            await .saveQuotes( TaskResult { try await environment.getQuotes(of: selectedAnime, page: page) } )
        }
    case let .saveQuotes(.success(quotes)):
        state.quotes.append(contentsOf: quotes)
        state.isLoading = false
        return .none
    case .saveQuotes(.failure):
        state.isLoading = false
        return .none
    case .resetPageAndQuotes:
        state.quotes = []
        state.page = 1
        return .none
    case let .selectAnime(anime):
        state.quotes = []
        state.page = 1
        state.selectedAnime = anime
        
        print("###: selectAnime", state.selectedAnime, state.page, state.quotes)
        
        let page = state.page
        return .task {
            await .saveQuotes( TaskResult { try await environment.getQuotes(of: anime, page: page) } )
        }
    }
}
