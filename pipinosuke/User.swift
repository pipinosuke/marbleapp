
import UIKit
import SwiftyJSON

struct User {
    
    let id: Int
    let screenName: String
    let userName: String
    
    init(id: Int, screenName: String, userName: String) {
        self.id = id
        self.screenName = screenName
        self.userName = userName
    }
    init(json: JSON) {
        id = json["id"].int ?? 0
        screenName = json["screenname"].string ?? ""
        userName = json["username"].string ?? ""
    }
}