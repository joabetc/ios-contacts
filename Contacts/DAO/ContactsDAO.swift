//
//  ContactsDAO.swift
//  Contacts
//
//  Created by retina on 31/01/19.
//  Copyright © 2019 retina. All rights reserved.
//

import CoreData
import UIKit

class ContactsDAO {
    
    static let instance = ContactsDAO()
    
    var contactList: [Contact] = []
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func list() -> [Contact] {
        do {
            contactList = try context.fetch(Contact.fetchRequest())
        } catch let error as NSError {
            print(error.description)
        }
        return contactList
    }
    
    func save(name: String, cell: String) -> Bool {
        let contact: Contact
        contact = Contact(context: context)
        contact.name = name
        contact.cell = cell
        
        do {
            try context.save()
            return true
        } catch let error as NSError {
            print(error.description)
            return false
        }
    }
}
