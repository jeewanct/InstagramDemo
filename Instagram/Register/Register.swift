//
//  Register.swift
//  Instagram
//
//  Created by Jeevan chandra on 28/07/17.
//  Copyright © 2017 Jeevan chandra. All rights reserved.
//

import UIKit

class Register: UIViewController{


    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    func setup(){
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        addViews()
    }

    @objc func registerWithEmailPhone(){
        navigationController?.pushViewController(RegisterWithEmailPhone(), animated: true)
    }

    let facebookSignButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Sign up with Facebook", for: .normal)
        btn.setImage(#imageLiteral(resourceName: "whiteFacebook").withRenderingMode(.alwaysOriginal), for: .normal)
        btn.imageView?.contentMode = .scaleAspectFit
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        btn.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.5490196078, blue: 0.9333333333, alpha: 1)
        btn.layer.cornerRadius = 10
        btn.imageView?.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        btn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        btn.imageEdgeInsets = UIEdgeInsets(top: 16, left: -24, bottom: 16, right: -24)
        return btn
    }()

    let headingImage: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.image = #imageLiteral(resourceName: "Heading").withRenderingMode(.alwaysTemplate)
        iv.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return iv
    }()

    lazy var signupLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
       // lbl.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(signup)))
        lbl.isUserInteractionEnabled = true
        lbl.textAlignment = .center
        return lbl
    }()

    lazy var phoneEmailButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Sign up with Phone or Email", for: .normal)
        btn.tintColor = #colorLiteral(red: 0.1882352941, green: 0.5490196078, blue: 0.9333333333, alpha: 1)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(registerWithEmailPhone), for: .touchUpInside)
        return btn
    }()

}
