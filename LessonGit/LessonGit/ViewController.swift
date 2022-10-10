//
//  ViewController.swift
//  LessonGit
//
//  Created by Александр Меренков on 06.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
//    MARK: - Properties
    
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Добро пожаловать"
        return label
    }()
    
    private let button: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Кнопка", for: .normal)
        btn.backgroundColor = .red
        return btn
    }()

//    MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
//    MARK: - Helpers
    private func configureUI() {
        view.addSubview(welcomeLabel)
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15).isActive = true
        welcomeLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        view.backgroundColor = .yellow
        
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 25).isActive = true
        button.widthAnchor.constraint(equalToConstant: 170).isActive = true
        button.heightAnchor.constraint(equalToConstant: 35).isActive = true
    }
}

