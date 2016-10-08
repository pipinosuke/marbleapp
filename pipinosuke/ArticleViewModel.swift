
import UIKit
import BrightFutures
import SwiftyJSON
import Alamofire

class ArticleViewModel: NSObject {
    // Articleオブジェクトの配列を定義します.初めはnilなのでOptional型です.
    var articles: [Article]?
    private let apiManager = APIManager.sharedInstance
    
    func fetchArticleList(params: [String: AnyObject]) -> Future<(Int,[Article]), NSError>  {
        let serializer = ArticleSerializer()
        let url = APIUrl.articleList
        return apiManager.get(url, params: params, serializer: serializer)
    }
    
}