//
//  ViewController.swift
//  CoordinatorDesignPattern
//
//  Created by Trinh Thai on 05/11/2021.
//

import UIKit

class ViewController: UIViewController {
    var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 55))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .systemGray
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.setTitle("Tap me! ", for: .normal)
    }
    
    @objc func didTapButton() {
        print("didTapButton")
        coordinator?.goToTheSecondView()

    }

}

