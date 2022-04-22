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

    private let imageView: UIImageView = {
        let image = UIImage(named: "github")
        let view = UIImageView(image: image)
        view.translatesAutoresizingMaskIntoConstraints = false
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

        // Safe Area
//        constraints.append(blueView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
//        constraints.append(blueView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
//        constraints.append(blueView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))
//        constraints.append(blueView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor))

        // With constant
//        constraints.append(blueView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100))
//        constraints.append(blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -100))
//        constraints.append(blueView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100))
//        constraints.append(blueView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100))

        view.addSubview(redView)

        // Width and height
        constraints.append(redView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5))
        constraints.append(redView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5))

        // Center
        constraints.append(redView.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(redView.centerYAnchor.constraint(equalTo: view.centerYAnchor))

        view.addSubview(imageView)
        constraints.append(imageView.heightAnchor.constraint(equalToConstant: 100))
        constraints.append(imageView.widthAnchor.constraint(equalToConstant: 100))
        constraints.append(imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20))

        NSLayoutConstraint.activate(constraints)
    }
}
