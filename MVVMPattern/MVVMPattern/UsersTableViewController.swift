//
//  UsersTableViewController.swift
//  MVVMPattern
//
//  Created by Trinh Thai on 11/11/2021.
//

import UIKit
class UsersTableViewController : UITableViewController {
    
    var userViewModels: [UserViewModel] = []
    
    override func viewDidLoad() {
        getAllUsers()
    }
    
    private func getAllUsers() {
        let dataAccess: DataAccess = DataAccess()
        userViewModels = dataAccess.getUsers().map { UserViewModel(with: $0) }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userViewModels.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath)
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "userCell")
        let viewModel = userViewModels[indexPath.row]
        
        cell.textLabel?.text = viewModel.nameText
        cell.detailTextLabel?.text = viewModel.phoneText
        return cell
    }
    
}
