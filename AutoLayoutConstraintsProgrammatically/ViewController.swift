//
//  ViewController.swift
//  AutoLayoutConstraintsProgrammatically
//
//  Created by Sergey Lukaschuk on 22.04.2022.
//

import UIKit

class ViewController: UIViewController {

    private let blueView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .link
        return view
    }()

    private let redView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addConstraints()
    }


}


extension ViewController {
    private func addConstraints() {
        var constraints = [NSLayoutConstraint]()

        view.addSubview(blueView)
        constraints.append(blueView.leadingAnchor.constraint(equalTo: view.leadingAnchor))
        constraints.append(blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor))
        constraints.append(blueView.topAnchor.constraint(equalTo: view.topAnchor))
        constraints.append(blueView.bottomAnchor.constraint(equalTo: view.bottomAnchor))

        view.addSubview(redView)
        constraints.append(redView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100))
        constraints.append(redView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100))
        constraints.append(redView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100))
        constraints.append(redView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100))

        NSLayoutConstraint.activate(constraints)
    }



}
