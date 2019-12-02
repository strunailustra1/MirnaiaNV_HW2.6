//
//  Person.swift
//  MirnaiaNV_HW2.6
//
//  Created by Наталья Мирная on 30/11/2019.
//  Copyright © 2019 Наталья Мирная. All rights reserved.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    var initials: String {
        name + " " + surname
    }
}
