//
//  MainCoordinator.swift
//  CoordinatorDesignPattern
//
//  Created by Trinh Thai on 05/11/2021.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController?
    
    func eventOccurred(with type: Event) {
        switch type {
        
        case .buttonTapped:
            print("buttonTapped")
            var vc: UIViewController & Coordinating = SecondViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func start() {
        print("start")
        var vc: UIViewController & Coordinating = ViewController()
        // Important!
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: false )
    }
    
}
