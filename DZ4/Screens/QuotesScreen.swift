//
//  QuotesScreen.swift
//  DZ4
//
//  Created by Alish Aidarkhan on 05.10.2022.
//

import SwiftUI
import UI
import ComposableArchitecture
import Flux

struct QuotesScreen: View {
    let store: Store<QuotesState, QuotesActions>
    @StateObject private var viewModel: QuotesViewModel = .init()
    
    var body: some View {
        WithViewStore(store) { viewStore in
            VStack {
                AnimePicker(selected: $viewModel.selectedAnime)
                    .onChange(of: viewModel.selectedAnime) { newValue in
                        viewStore.send(.selectAnime(newValue))
                        viewStore.send(.resetPageAndQuotes)
                        viewStore.send(.getQuotes)
                }
                
                List {
                    ForEach(viewStore.quotes, id: \.self) { quote in
                        Quote(character: quote.character, quote: quote.quote)
                        .onAppear {
                            if !viewStore.isLoading, quote == viewStore.quotes[viewStore.quotes.count - 1] {
                                viewStore.send(.getQuotes)
                            }
                        }
                    }
                    if viewStore.isLoading {
                        ActivityIndicator()
                    }
                }
            }
            .onAppear {
                viewStore.send(.getQuotes)
            }
        }
    }
}
