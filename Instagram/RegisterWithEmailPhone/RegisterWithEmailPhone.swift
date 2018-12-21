//
//  RegisterWithEmailPhone.swift
//  Instagram
//
//  Created by Jeevan chandra on 28/07/17.
//  Copyright © 2017 Jeevan chandra. All rights reserved.
//

import UIKit

class RegisterWithEmailPhone: UIViewController, UITextFieldDelegate{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        setup()
    }

    func setup(){
        let gesture = UISwipeGestureRecognizer(target: self, action: #selector(hideKeyboard))
        phoneEmailText.delegate = self
        gesture.direction = .down
        view.addGestureRecognizer(gesture)
        addViews()
    }

    @objc func hideKeyboard(){
        phoneEmailText.resignFirstResponder()
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        phoneEmailText.resignFirstResponder()
        return true
    }

    @objc func handlePhone(){
        emailButton.setTitleColor(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), for: .normal)
        phoneButton.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        let leftPaddingView = UIView(frame: CGRect(x: (UIScreen.main.bounds.width - 64) * 0.3 + 16, y: 0, width: (UIScreen.main.bounds.width - 64) * 0.3 + 16, height: UIScreen.main.bounds.width * 0.08))
        phoneEmailText.leftView = leftPaddingView
        phoneEmailText.placeholder = "Phone Number"
        infoLabel.isHidden = false
        sep.isHidden = false
        phoneCode.isHidden = false
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.6, options: .curveEaseIn, animations: {
            self.movingView.transform = .identity
        }, completion: nil)

    }

    @objc func handleEmail(){
        emailButton.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        phoneButton.setTitleColor(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), for: .normal)
        phoneCode.isHidden = true
        sep.isHidden = true
        phoneEmailText.placeholder = "Email Address"
        let leftPaddingView = UIView(frame: CGRect(x: 15, y: 0, width: 15, height: UIScreen.main.bounds.width * 0.08))
        phoneEmailText.leftView = leftPaddingView
        infoLabel.isHidden = true
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.6, options: .curveEaseIn, animations: {
            self.movingView.transform = CGAffineTransform(translationX: self.movingView.frame.width, y: 0)
        }, completion: nil)
    }

    @objc func handlenext(){
        navigationController?.pushViewController(RegisterInformation(), animated: true)
    }

    lazy var phoneButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Phone", for: .normal)
        btn.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)

        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        btn.addTarget(self, action: #selector(handlePhone), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()

    lazy var emailButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Email Address", for: .normal)
        btn.setTitleColor(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        btn.addTarget(self, action: #selector(handleEmail), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()

    let movingView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var signupLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        // lbl.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(signup)))
        lbl.isUserInteractionEnabled = true
        lbl.textAlignment = .center
        return lbl
    }()

    let phoneEmailText: UITextField = {
        let text = UITextField()
        text.backgroundColor = #colorLiteral(red: 0.9764705882, green: 0.9764705882, blue: 0.9764705882, alpha: 1)
        text.placeholder = "Phone Number"
        let leftPaddingView = UIView(frame: CGRect(x: (UIScreen.main.bounds.width - 64) * 0.3 + 16, y: 0, width: (UIScreen.main.bounds.width - 64) * 0.3 + 16, height: UIScreen.main.bounds.width * 0.08))
        text.leftView = leftPaddingView
        text.leftViewMode = .always
        text.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
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

    let infoLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "You may receive SMS updates from instagram and can opt out at any time."
        lbl.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        lbl.textAlignment = .center
        lbl.numberOfLines = 0
        return lbl
    }()

    let phoneCode: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("IN +91", for: .normal)
        button.titleLabel?.textColor = #colorLiteral(red: 0.1882352941, green: 0.5490196078, blue: 0.9333333333, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let sep: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    
}
