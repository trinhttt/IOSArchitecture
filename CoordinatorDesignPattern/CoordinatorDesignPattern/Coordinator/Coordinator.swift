//
//  Coordinator.swift
//  CoordinatorDesignPattern
//
//  Created by Trinh Thai on 05/11/2021.
//

import UIKit

enum Event {
    case buttonTapped
}
protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    func eventOccurred(with type: Event)
    func start()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
