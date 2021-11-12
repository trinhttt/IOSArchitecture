//
//  DataAccess.swift
//  MVVMPattern
//
//  Created by Trinh Thai on 11/11/2021.
//

import Foundation

class DataAccess {
    
    func getUsers() -> [UserModel] {
        var users = [UserModel]()
        users.append(UserModel(name: "Name1", email: "t1@gmail.com", phone: "0123456789"))
        users.append(UserModel(name: "Name2", email: "t2@gmail.com", phone: "0123456789"))
        users.append(UserModel(name: "Name3", email: "t3@gmail.com", phone: "0123456789"))
        users.append(UserModel(name: "Name4", email: "t4@gmail.com", phone: "0123456789"))
        
        return users
    }
    
}
