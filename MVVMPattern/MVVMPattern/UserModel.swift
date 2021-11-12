//
//  UserModel.swift
//  MVVMPattern
//
//  Created by Trinh Thai on 11/11/2021.
//

import Foundation

struct UserModel {
    var name: String
    var email: String
    var phone: String
    
    init(name: String, email: String, phone: String) {
        self.name = name
        self.email = email
        self.phone = phone
    }
}
