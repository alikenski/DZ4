//
//  File.swift
//  
//
//  Created by Alish Aidarkhan on 05.10.2022.
//


import SwiftUI

public struct ActivityIndicator: View {
    public init() {}
    
    public var body: some View {
        HStack {
            Spacer()
            ProgressView()
            Spacer()
        }
    }
}
