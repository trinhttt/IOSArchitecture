//
//  UserPresenter.swift
//  MVPPattern
//
//  Created by Trinh Thai on 06/11/2021.
//

import UIKit

protocol UserPresenterDelegate: AnyObject {
    func presenterUsers(users: [User])
    func presenterAlert(title: String, message: String)
}

typealias PresenterDelegate = UserPresenterDelegate & UIViewController

class UserPresenter {
    weak var delegate: PresenterDelegate?
    
    public func setViewDelegate(delegate: PresenterDelegate) {
        self.delegate = delegate
    }
    
    public func getUsers() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
        let task = URLSession.shared.dataTask(with: url) { [ weak self ] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let users = try JSONDecoder().decode([User].self, from: data)
                self?.delegate?.presenterUsers(users: users)
            } catch {
                print(error.localizedDescription)
            }
            
        }
        task.resume()
    }
    
    public func didTapUser(user: User) {
        print("didTapUser")
        delegate?.presenterAlert(title: user.name, message: "\(user.name) has email: \(user.email) and username: \(user.username)")
    }
}
