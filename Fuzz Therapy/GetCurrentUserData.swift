//
//  GetCurrentUserData.swift
//  Fuzz Therapy
//
//  Created by Jade Vance on 8/10/16.
//  Copyright © 2016 Jade Vance. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import Google

// this is for getting and posting data with the API, not the oauth login

func getCurrentUserData(userId: String) {
    Alamofire.request(.GET, "https://www.fuzztherapy.com/api/").response { (req, res, data, error) -> Void in
        print(res)
        let outputString = NSString(data: data!, encoding:NSUTF8StringEncoding)
        print(outputString)
    }
    
//    let parameters = ["user": "12345"]
//    
//    Alamofire.request(.POST, "https://www.fuzztherapy.com/api/", parameters: parameters)
//        .responseJSON { response in
//    
//            let userData = JSON(response.result.value!)
//            print(userData)
//            
//    }
}

