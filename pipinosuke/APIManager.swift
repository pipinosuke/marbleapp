//
//  APIManager.swift
//  pipinosuke
//
//  Created by pipinosuke on 2016/10/08.
//  Copyright © 2016年 pipinosuke. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire
import BrightFutures

class APIManager: NSObject {
    
    static let sharedInstance = APIManager()
    
    func get<T: ResponseSerializerType>(url: URLStringConvertible, params: [String: AnyObject], serializer: T) -> Future<T.SerializedObject, T.ErrorObject> {
        let promise = Promise<T.SerializedObject, T.ErrorObject>()
        
        Alamofire.request(.GET, url, parameters: params)
            .validate()
            .response(responseSerializer: serializer) { response in
                switch response.result {
                case .Success(let r):
                    promise.success(r)
                    
                case .Failure(let error):
                    print(error)
                    promise.failure(error)
                }
        }
        return promise.future
    }
}