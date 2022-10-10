import SwiftUI

public struct Quote: View {
    @State var character: String
    @State var quote: String
    
    public init(character: String, quote: String) {
        self.character = character
        self.quote = quote
    }
    
    public var body: some View {
        VStack {
            Text(character)
                .font(Font.system(size: 24, weight: .black))
            Text(quote)
        }
    }
}
