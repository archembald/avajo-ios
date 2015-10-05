//
//  Location.swift
//  avajo-ios
//
//  Created by Alejandro Alvarez Martinez on 05/10/2015.
//  Copyright (c) 2015 Archembald. All rights reserved.
//

import CoreData

class Location: NSManagedObject {
    @NSManaged var type: String!
    @NSManaged var coordinates: [Int]
    
}