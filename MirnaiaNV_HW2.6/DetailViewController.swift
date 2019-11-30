//
//  DetailViewController.swift
//  MirnaiaNV_HW2.6
//
//  Created by Наталья Мирная on 30/11/2019.
//  Copyright © 2019 Наталья Мирная. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var initialsLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialsLabel.text = person.initials
        emailLabel.text = person.email
        phoneLabel.text = person.phone
    }
}
