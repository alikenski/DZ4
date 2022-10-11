import UIKit

public class UDWrapper {
    private let defaults = UserDefaults.standard
    
    public init() {}
    
    public func saveLastSelectedAnime(_ anime: String) {
        defaults.set(anime, forKey: "lastAnime")
    }
    
    public func getLastSelectedAnime() -> String {
        return defaults.string(forKey: "lastAnime") ?? "Naruto"
    }
}
