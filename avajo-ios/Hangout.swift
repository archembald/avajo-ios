//
//  Hangout.swift
//  avajo-ios
//
//  Created by Alejandro Alvarez Martinez on 05/10/2015.
//  Copyright (c) 2015 Archembald. All rights reserved.
//

import CoreData

class Hangout: NSManagedObject {
    @NSManaged var title: String!
    @NSManaged var desc: String!
    @NSManaged var users: [User]
    @NSManaged var waitlist: [User]
    @NSManaged var chat_id: Int
    @NSManaged var time: NSDate
    @NSManaged var location: Location
}