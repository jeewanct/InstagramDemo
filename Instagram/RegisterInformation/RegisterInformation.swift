//
//  RegisterInformation.swift
//  Instagram
//
//  Created by Jeevan chandra on 28/07/17.
//  Copyright © 2017 Jeevan chandra. All rights reserved.
//

import UIKit

class RegisterInformation: UIViewController, UITextFieldDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        setup()
    }

    func setup(){
        addViews()
        fullnameText.delegate = self
        passwordText.delegate = self
        let gesture = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe))
        gesture.direction = .down
        view.addGestureRecognizer(gesture)
    }

    @objc func handleSwipe(){
        fullnameText.resignFirstResponder()
        passwordText.resignFirstResponder()
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == fullnameText{
            passwordText.becomeFirstResponder()
        }else if textField == passwordText{
            passwordText.resignFirstResponder()
        }
        return true
    }

    @objc func handlenext(){
        navigationController?.pushViewController(Home(), animated: true)
    }

    let fullnameText: UITextField = {
        let text = UITextField()
        text.backgroundColor = #colorLiteral(red: 0.9764705882, green: 0.9764705882, blue: 0.9764705882, alpha: 1)
        text.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        text.placeholder = "Full name"
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: UIScreen.main.bounds.width * 0.08))
        text.leftView = leftPaddingView
        text.leftViewMode = .always
        text.isSecureTextEntry = true
        text.autocorrectionType = .no
        text.layer.borderWidth = 1.5
        text.layer.cornerRadius = 10
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()

    let passwordText: UITextField = {
        let text = UITextField()
        text.backgroundColor = #colorLiteral(red: 0.9764705882, green: 0.9764705882, blue: 0.9764705882, alpha: 1)
        text.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        text.placeholder = "Password"
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: UIScreen.main.bounds.width * 0.08))
        text.leftView = leftPaddingView
        text.leftViewMode = .always
        text.isSecureTextEntry = true
        text.autocorrectionType = .no
        text.layer.borderWidth = 1.5
        text.layer.cornerRadius = 10
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()

    lazy var nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.5490196078, blue: 0.9333333333, alpha: 1)
        button.setTitle("Next", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.addTarget(self, action: #selector(handlenext), for: .touchUpInside)
        return button
    }()

    lazy var signupLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        // lbl.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(signup)))
        lbl.isUserInteractionEnabled = true
        lbl.textAlignment = .center
        return lbl
    }()

    
    

}
