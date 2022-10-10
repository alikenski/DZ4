//
//  SwiftUIView.swift
//  
//
//  Created by Alish Aidarkhan on 05.10.2022.
//

import SwiftUI

public struct AnimePicker: View {
    @Binding var selectedAnime: String
    let animes: [String] = ["Naruto", "Hyouka", "Charlotte"]
    
    public init(selected: Binding<String>) {
        self._selectedAnime = selected
    }
    
    public var body: some View {
        Picker("Choose Anime", selection: $selectedAnime) {
            ForEach(animes, id: \.self) {
                Text($0)
            }
        }
        .onChange(of: selectedAnime, perform: { newValue in
            print("###: newValue", newValue)
        })
        .pickerStyle(.segmented)
    }
}
