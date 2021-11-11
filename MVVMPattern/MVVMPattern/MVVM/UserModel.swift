//
//  UserModel.swift
//  MVVMPattern
//
//  Created by Trinh Thai on 11/11/2021.
//

import Foundation

struct UserModel {
    var email: String
    var phone: String
    
    init(email: String, phone: String) {
        self.email = email
        self.phone = phone
    }
}
