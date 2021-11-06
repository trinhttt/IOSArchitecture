//
//  MainCoordinator.swift
//  CoordinatorDesignPattern
//
//  Created by Trinh Thai on 05/11/2021.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // Way 1
    //    func eventOccurred(with type: Event) {
    //        switch type {
    //
    //        case .buttonTapped:
    //            print("buttonTapped")
    //            var vc: UIViewController & Coordinating = SecondViewController()
    //            vc.coordinator = self
    //            navigationController?.pushViewController(vc, animated: true)
    //        }
    //    }
    
    // Way 2
    func goToTheSecondView() {
        print("goToTheSecondView")
        let vc = SecondViewController()
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func start() {
        print("start")
        let vc = ViewController()
        // Important!
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: false )
    }
    
}
