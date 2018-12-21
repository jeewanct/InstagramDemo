//
//  RegisterInformationViews.swift
//  Instagram
//
//  Created by Jeevan chandra on 28/07/17.
//  Copyright © 2017 Jeevan chandra. All rights reserved.
//

import UIKit

extension RegisterInformation{


    func addViews(){

        let headingLabel = UILabel()
        headingLabel.text = "Name and password"
        headingLabel.font = UIFont(name: headingLabel.font.fontName, size: 21)
        headingLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(headingLabel)
        headingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        headingLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 44).isActive = true

        let subHeading = UILabel()
        subHeading.text = "Add yourname so that friends can find you."
        subHeading.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(subHeading)
        subHeading.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        subHeading.topAnchor.constraint(equalTo: headingLabel.topAnchor, constant: 44).isActive = true

        view.addSubview(fullnameText)
        fullnameText.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 32).isActive = true
        fullnameText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32).isActive = true
        fullnameText.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08).isActive = true
        fullnameText.topAnchor.constraint(equalTo: subHeading.bottomAnchor,constant: 20).isActive = true

        view.addSubview(passwordText)
        passwordText.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 32).isActive = true
        passwordText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32).isActive = true
        passwordText.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08).isActive = true
        passwordText.topAnchor.constraint(equalTo: fullnameText.bottomAnchor,constant: 20).isActive = true

        view.addSubview(nextButton)
        nextButton.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 32).isActive = true
        nextButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32).isActive = true
        nextButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08).isActive = true
        nextButton.topAnchor.constraint(equalTo: passwordText.bottomAnchor,constant: 20).isActive = true



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
