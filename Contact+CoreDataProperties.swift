//
//  Contact+CoreDataProperties.swift
//  Contacts
//
//  Created by retina on 31/01/19.
//  Copyright © 2019 retina. All rights reserved.
//
//

import Foundation
import CoreData


extension Contact {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Contact> {
        return NSFetchRequest<Contact>(entityName: "Contact")
    }

    @NSManaged public var name: String?
    @NSManaged public var cell: String?

}
