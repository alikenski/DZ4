import Alamofire

public class Routes {
    public init() {}
    
    public func fetchQuotes(of anime: String, page: Int = 0, completion: @escaping ([QuoteModel]) -> Void) {
        AF.request("https://animechan.vercel.app/api/quotes/anime?title=\(anime)&page=\(page)")
          .responseDecodable(of: [QuoteModel].self) { response in
              switch response.result {
              case .success(let value):
                  completion(value)

              default:
                  fatalError("received non-dictionary JSON response")
              }
        }
    }
}
