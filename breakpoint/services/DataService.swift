//
//  DataService.swift
//  breakpoint
//
//  Created by Alex on 4/11/18.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation
import Firebase

let DB_BASE = Database.database().reference()

class DataService {
    fileprivate static let _instance = DataService()
    
    static var instance: DataService {
        return _instance
    }
    
    fileprivate var _REF_BASE = DB_BASE
    fileprivate var _REF_USERS = DB_BASE.child("users")
    fileprivate var _REF_GROUPS = DB_BASE.child("groups")
    fileprivate var _REF_FEED = DB_BASE.child("feed")
    
    var REF_BASE: DatabaseReference {
        return _REF_BASE
    }
    
    var REF_USERS: DatabaseReference {
        return _REF_USERS
    }
    
    var REF_GROUPS: DatabaseReference {
        return _REF_GROUPS
    }
    
    var REF_FEED: DatabaseReference {
        return _REF_FEED
    }
    
    func createUser(with uid: String, userData: Dictionary<String, Any>){
        REF_USERS.child(uid).updateChildValues(userData)
    }

}
