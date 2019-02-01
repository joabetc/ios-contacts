//
//  ViewController.swift
//  Contacts
//
//  Created by retina on 31/01/19.
//  Copyright © 2019 retina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var name: UITextField!
    @IBOutlet var cell: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func save(_sender: Any) {
        let result: Bool
        
        result = ContactsDAO.instance.save(name: name.text!, cell: cell.text!)
    }


}

