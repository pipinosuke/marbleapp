import Foundation

class APIUrl {
    
    private static let host = "http://api.topicks.jp"
    
    static var articleList: String {
        return host + "/api/v1/articles/list.json"
    }
    
    static var articleDetail: String {
        return host + "/api/v1/articles/show.json"
    }
}