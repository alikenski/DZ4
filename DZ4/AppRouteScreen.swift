//
//  AppRouteScreen.swift
//  DZ4
//
//  Created by Alish Aidarkhan on 05.10.2022.
//

import SwiftUI
import Navigation
import ComposableArchitecture
import Flux

struct AppRouteScreen: View {
    var body: some View {
        StackNavigation(transition: .custom(.move(edge: .leading), .slide)) {
            QuotesScreen(
                store: Store<QuotesState, QuotesActions>(
                    initialState: QuotesState(),
                    reducer: reducer,
                    environment: QuotesEnv()
                )
            )
        }
    }
}
