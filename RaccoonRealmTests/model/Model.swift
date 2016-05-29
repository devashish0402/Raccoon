//
//  RealmModel.swift
//  raccoon
//
//  Created by Manu on 21/4/16.
//  Copyright © 2016 manuege. All rights reserved.
//

import Foundation
import RaccoonRealm
import RealmSwift
import RaccoonCore

struct DateConverter {
    static let formatter: NSDateFormatter = {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()
    
    static func string(fromDate date: NSDate) -> String {
        return formatter.stringFromDate(date)
    }
    
    static func date(fromString string: String) -> NSDate {
        return formatter.dateFromString(string)!
    }
}

class User: Object {
    dynamic var id: Int = 0
    dynamic var name: String = ""
    dynamic var country: String = ""
    dynamic var birthday: NSDate! = nil
    dynamic var created: NSDate? = NSDate()
    
    override static func indexedProperties() -> [String] {
        return ["id"]
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    override class var keyPathsByProperties: [String: KeyPathConvertible]? {
        return [
            "id": "id",
            "name": "Nombre",
            "birthday": KeyPathTransformer(keyPath: "birthday", transformer:DateConverter.date),
            "country": "address.country",
            "created": KeyPathTransformer(keyPath: "created", transformer:DateConverter.date)
        ]
    }
}

class Role: Object {
    dynamic var id: Int = 0
    dynamic var name: String = ""
    
    override static func indexedProperties() -> [String] {
        return ["id"]
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
}

class Department: Object {
    dynamic var id: Int = 0
    dynamic var name: String = ""
    
    // Just for test this method
    override class func convertJSON(json: [String: AnyObject]) -> [String: AnyObject] {
        return ["id": 1, "name": "Bosses"]
    }
}
