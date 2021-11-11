//
//  UserViewModel.swift
//  MVVMPattern
//
//  Created by Trinh Thai on 11/11/2021.
//

import Foundation

class UsersListViewModel {
    
    var users: [UserModel] = []
    private var dataAccess: DataAccess
    
    init(dataAccess :DataAccess) {
        self.dataAccess = dataAccess
        populateUsers()
    }
    
    private func populateUsers() {
        users = self.dataAccess.getUsers()
    }
}
