//
//  SecondViewController.swift
//  CoordinatorDesignPattern
//
//  Created by Trinh Thai on 05/11/2021.
//

import UIKit

class SecondViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second View"
                view.backgroundColor = .systemBlue
    }


}
