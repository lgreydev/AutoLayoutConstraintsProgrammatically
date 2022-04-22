//
//  ViewController.swift
//  AutoLayoutConstraintsProgrammatically
//
//  Created by Sergey Lukaschuk on 22.04.2022.
//

import UIKit

class ViewController: UIViewController {

    private let myView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myView)
        addConstraints()
    }


}


extension ViewController {
    private func addConstraints() {

    }
}
