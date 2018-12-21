//
//  RegisterView.swift
//  Instagram
//
//  Created by Jeevan chandra on 28/07/17.
//  Copyright © 2017 Jeevan chandra. All rights reserved.
//

import UIKit

extension Register{

    func addViews(){
        let headerView = GradientView()
        view.addSubview(headerView)
        headerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        headerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        headerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        headerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true

        let tempView = UIView()
        view.addSubview(tempView)
        tempView.translatesAutoresizingMaskIntoConstraints = false
        tempView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tempView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tempView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        tempView.centerYAnchor.constraint(equalTo: headerView.centerYAnchor,constant: 20).isActive = true


        view.addSubview(headingImage)
        headingImage.bottomAnchor.constraint(equalTo: tempView.topAnchor).isActive = true
        headingImage.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 0.4).isActive = true
        headingImage.widthAnchor.constraint(equalTo: headerView.widthAnchor, multiplier: 0.6).isActive = true
        headingImage.centerXAnchor.constraint(equalTo: headerView.centerXAnchor).isActive = true

        let headingText = UILabel()
        headingText.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        headingText.numberOfLines = 0
        headingText.translatesAutoresizingMaskIntoConstraints = false
        headingText.font = UIFont.boldSystemFont(ofSize: 20)
        headingText.text = "Sign up to see photos and videos from your friends."
        view.addSubview(headingText)
        headingText.topAnchor.constraint(equalTo: tempView.bottomAnchor,constant: 0).isActive = true
      //  headingText.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 0.4).isActive = true
        headingText.widthAnchor.constraint(equalTo: headerView.widthAnchor, multiplier: 0.6).isActive = true
        headingText.centerXAnchor.constraint(equalTo: headerView.centerXAnchor).isActive = true

        view.addSubview(facebookSignButton)
        facebookSignButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 32).isActive = true
        facebookSignButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32).isActive = true
        facebookSignButton.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 20).isActive = true
        facebookSignButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08).isActive = true

        let seperatorView = UIView()
        seperatorView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        seperatorView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(seperatorView)
        seperatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        seperatorView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 32).isActive = true
        seperatorView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32).isActive = true
        seperatorView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        seperatorView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true

        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "OR"
        label.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        label.textAlignment = .center
        label.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.addSubview(label)
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08).isActive = true
        label.widthAnchor.constraint(equalToConstant: 80).isActive = true

        view.addSubview(phoneEmailButton)
        phoneEmailButton.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20).isActive = true
        phoneEmailButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 32).isActive = true
        phoneEmailButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32).isActive = true
       

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
