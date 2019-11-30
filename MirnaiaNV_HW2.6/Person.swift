//
//  Person.swift
//  MirnaiaNV_HW2.6
//
//  Created by Наталья Мирная on 30/11/2019.
//  Copyright © 2019 Наталья Мирная. All rights reserved.
//

import Foundation

struct Person {
    
    static let nameList = ["John", "James", "Kenny", "Kevin", "Mike"]
    
    static let surnameList = ["Smith", "Jonson", "Lopez", "Grande", "Martin"]
    
    static let emailList = ["Smith@gmail.com",
                           "KennyLopez@gmail.com",
                           "Martin1989@gmail.com",
                           "Kevin905@gmail.com",
                           "murder2019@gmail.com"]
    
    static let phoneList = ["89265783478",
                          "89231245690",
                          "89457645349",
                          "89125647898",
                          "89341235467"]
    
    var name: String
    var surname: String
    var email: String
    var phone: String
    
    
    static func getPerson(index: Int) -> Person {
        Person(name: nameList[index], surname: surnameList[index], email: emailList[index], phone: phoneList[index])
    }
    
}
