//
//  File.swift
//  
//
//  Created by Alish Aidarkhan on 10.10.2022.
//

import Foundation
import Network
import ComposableArchitecture

public enum QuotesActions {
    case getQuotes
    case selectAnime(String)
    case saveQuotes(TaskResult<[QuoteModel]>)
    case resetPageAndQuotes
}
