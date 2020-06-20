//
//  QueriesHistoryService.swift
//  Movies
//
//  Created by Bruno Teixeira Muniz Rocha on 20/06/20.
//  Copyright © 2020 Bruno Teixeira Muniz Rocha. All rights reserved.
//

import Foundation

//para armazenar o histórico de consultas
final class QueriesHistoryService {
    class func getHistory(key: String) -> [Any]? {
        return UserDefaults.standard.array(forKey: key)
    }
    
    private class func setObject(key: String, value: Any?) {
        if value == nil {
            UserDefaults.standard.removeObject(forKey: key)
        } else {
            UserDefaults.standard.set(value, forKey: key)
        }
        
        sync()
    }
    
    class func saveHistory(key: String, value: [Any]) {
        setObject(key: key, value: value)
    }
    
    class func sync() {
        UserDefaults.standard.synchronize()
    }
}
