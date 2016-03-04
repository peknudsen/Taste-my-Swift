//
//  NetworkManager.swift
//  Taste my Swift
//
//  Created by Paul Knudsen on 3/4/16.
//  Copyright © 2016 New Relic. All rights reserved.
//

import Foundation
import Alamofire

public class NetworkManager {
    static let sharedInstance = NetworkManager()
    
    
    static let rawStaticManager: Alamofire.Manager = {
        
        let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
        
        configuration.HTTPAdditionalHeaders = Manager.defaultHTTPHeaders
        
        
        
        return Alamofire.Manager(configuration: configuration)
        
    }()
    let rawManager: Alamofire.Manager = {
        
        let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
        
        configuration.HTTPAdditionalHeaders = Manager.defaultHTTPHeaders
        
        
        
        return Alamofire.Manager(configuration: configuration)
        
    }()

}
