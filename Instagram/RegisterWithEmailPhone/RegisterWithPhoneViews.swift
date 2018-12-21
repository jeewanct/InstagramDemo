//
//  RegisterWithPhoneViews.swift
//  Instagram
//
//  Created by Jeevan chandra on 28/07/17.
//  Copyright © 2017 Jeevan chandra. All rights reserved.
//

import UIKit

extension RegisterWithEmailPhone{


    func addViews(){

        view.addSubview(phoneButton)
        phoneButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 44).isActive = true
        phoneButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 32).isActive = true
        phoneButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08).isActive = true
        phoneButton.widthAnchor.constraint(equalToConstant: view.frame.width / 2 - 64).isActive = true

        view.addSubview(emailButton)
        emailButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 44).isActive = true
        emailButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32).isActive = true
        emailButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08).isActive = true
        emailButton.widthAnchor.constraint(equalToConstant: view.frame.width / 2 - 64).isActive = true

        let tempView = UIView()
        tempView.translatesAutoresizingMaskIntoConstraints = false
        tempView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.addSubview(tempView)
        tempView.topAnchor.constraint(equalTo: emailButton.bottomAnchor, constant: 0).isActive = true
        tempView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 32).isActive = true
        tempView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32).isActive = true
        tempView.heightAnchor.constraint(equalToConstant: 1).isActive = true

        tempView.addSubview(movingView)
        movingView.leftAnchor.constraint(equalTo: tempView.leftAnchor, constant: 0).isActive = true
        movingView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        movingView.centerYAnchor.constraint(equalTo: tempView.centerYAnchor).isActive = true
        movingView.widthAnchor.constraint(equalTo: tempView.widthAnchor, multiplier: 0.5).isActive = true

        view.addSubview(phoneEmailText)
        phoneEmailText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 32).isActive = true
        phoneEmailText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32).isActive = true
        phoneEmailText.topAnchor.constraint(equalTo: tempView.bottomAnchor, constant: 20).isActive = true
        phoneEmailText.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08).isActive = true

        phoneEmailText.addSubview(phoneCode)
        phoneCode.leftAnchor.constraint(equalTo: phoneEmailText.leftAnchor, constant:8).isActive = true
        phoneCode.topAnchor.constraint(equalTo: phoneEmailText.topAnchor, constant: 8).isActive = true
        phoneCode.bottomAnchor.constraint(equalTo: phoneEmailText.bottomAnchor, constant: -8).isActive = true
        phoneCode.widthAnchor.constraint(equalTo: phoneEmailText.widthAnchor, multiplier: 0.3).isActive = true

    
        phoneEmailText.addSubview(sep)
        sep.leftAnchor.constraint(equalTo: phoneCode.rightAnchor).isActive = true
        sep.topAnchor.constraint(equalTo: phoneEmailText.topAnchor, constant: 8).isActive = true
        sep.bottomAnchor.constraint(equalTo: phoneEmailText.bottomAnchor, constant: -8).isActive = true
        sep.widthAnchor.constraint(equalToConstant: 1).isActive = true

        view.addSubview(nextButton)
        nextButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 32).isActive = true
        nextButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32).isActive = true
        nextButton.topAnchor.constraint(equalTo: phoneEmailText.bottomAnchor, constant: 20).isActive = true
        nextButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08).isActive = true

        view.addSubview(infoLabel)
        infoLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 32).isActive = true
        infoLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32).isActive = true
        infoLabel.topAnchor.constraint(equalTo: nextButton.bottomAnchor, constant: 10).isActive = true
        infoLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08).isActive = true

        let firstAttribute = NSMutableAttributedString(string: "Already have an account? ", attributes: [NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)])
        let seconAttribute = NSAttributedString(string: "Sign In", attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 17), NSAttributedStringKey.foregroundColor: #colorLiteral(red: 0.1882352941, green: 0.5490196078, blue: 0.9333333333, alpha: 1)])
        view.addSubview(signupLabel)
        firstAttribute.append(seconAttribute)
        signupLabel.attributedText = firstAttribute
        signupLabel.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        signupLabel.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        signupLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        signupLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.09).isActive = true


        let seperatorView1 = UIView()
        view.addSubview(seperatorView1)
        seperatorView1.translatesAutoresizingMaskIntoConstraints = false
        seperatorView1.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        seperatorView1.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        seperatorView1.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        seperatorView1.heightAnchor.constraint(equalToConstant: 1).isActive = true
        seperatorView1.bottomAnchor.constraint(equalTo: signupLabel.topAnchor).isActive = true
    }
}
