//
//  AddViews.swift
//  Instagram
//
//  Created by Jeevan chandra on 27/07/17.
//  Copyright © 2017 Jeevan chandra. All rights reserved.
//

import UIKit

extension Login{

    func addViews(){
        let headerView = GradientView()
        view.addSubview(headerView)
        headerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        headerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        headerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        headerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.17).isActive = true

        view.addSubview(heading)
        heading.centerXAnchor.constraint(equalTo: headerView.centerXAnchor).isActive = true
        heading.centerYAnchor.constraint(equalTo: headerView.centerYAnchor, constant: 20).isActive = true
        heading.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 0.2).isActive = true
        heading.widthAnchor.constraint(equalTo: headerView.widthAnchor, multiplier: 0.5).isActive = true

        view.addSubview(userText)
        userText.topAnchor.constraint(equalTo: headerView.bottomAnchor , constant: 40).isActive = true
        userText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 32).isActive = true
        userText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32).isActive = true
        userText.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08).isActive = true

        view.addSubview(passwordText)
        passwordText.topAnchor.constraint(equalTo: userText.bottomAnchor , constant: 20).isActive = true
        passwordText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 32).isActive = true
        passwordText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32).isActive = true
        passwordText.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08).isActive = true

        view.addSubview(loginButton)
        loginButton.topAnchor.constraint(equalTo: passwordText.bottomAnchor , constant: 28).isActive = true
        loginButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 32).isActive = true
        loginButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32).isActive = true
        loginButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08).isActive = true

        view.addSubview(forgetLabel)
        let firstAttributeF = NSMutableAttributedString(string: "Forgotten your login details? ", attributes: [NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)])
        let secondAttrubuteF = NSAttributedString(string: "Get help with signing in.", attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 17), NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0.1882352941, green: 0.5490196078, blue: 0.9333333333, alpha: 1)])
        let firstAttribute = NSMutableAttributedString(string: "Don't have an account? ", attributes: [NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)])
        let seconAttribute = NSAttributedString(string: "Sign Up", attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 17), NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0.1882352941, green: 0.5490196078, blue: 0.9333333333, alpha: 1)])
        firstAttributeF.append(secondAttrubuteF)
        forgetLabel.attributedText = firstAttributeF
        forgetLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor , constant: 23).isActive = true
        forgetLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 32).isActive = true
        forgetLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32).isActive = true
       // forgetLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08).isActive = true

        
        let seperatorView1 = UIView()
        view.addSubview(seperatorView1)
        seperatorView1.translatesAutoresizingMaskIntoConstraints = false
        seperatorView1.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        seperatorView1.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 32).isActive = true
        seperatorView1.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -32).isActive = true
        seperatorView1.heightAnchor.constraint(equalToConstant: 1).isActive = true
        seperatorView1.topAnchor.constraint(equalTo: forgetLabel.bottomAnchor,constant: 30).isActive = true

        let label = UILabel()
        label.text = "OR"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        label.textAlignment = .center
        view.addSubview(label)
        label.centerYAnchor.constraint(equalTo: seperatorView1.centerYAnchor).isActive = true
        label.centerXAnchor.constraint(equalTo: seperatorView1.centerXAnchor).isActive = true
        label.heightAnchor.constraint(equalToConstant: 40).isActive = true
        label.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        view.addSubview(facebookButton)
        facebookButton.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20).isActive = true
        facebookButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 28).isActive = true
        facebookButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -28).isActive = true
        facebookButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05).isActive = true
        
        view.addSubview(signupLabel)
        firstAttribute.append(seconAttribute)
        signupLabel.attributedText = firstAttribute

        signupLabel.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        signupLabel.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        signupLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        signupLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.09).isActive = true
 
        

        let seperatorView = UIView()
        view.addSubview(seperatorView)
        seperatorView.translatesAutoresizingMaskIntoConstraints = false
        seperatorView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        seperatorView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        seperatorView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        seperatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        seperatorView.bottomAnchor.constraint(equalTo: signupLabel.topAnchor).isActive = true


        
    }



}
