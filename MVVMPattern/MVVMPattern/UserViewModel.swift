//
//  UserViewModel.swift
//  MVVMPattern
//
//  Created by Trinh Thai on 11/11/2021.
//

import Foundation

struct UserViewModel {
    private var user: UserModel
    
    init(with model: UserModel) {
        self.user = model
    }
    
    var nameText: String {
        return "Name: \(user.name)"
    }
    
    var phoneText: String {
        return "Phone number: \(user.phone)"
    }
}


