//
//  ViewController.swift
//  Instagram
//
//  Created by Jeevan chandra on 27/07/17.
//  Copyright © 2017 Jeevan chandra. All rights reserved.
//

import UIKit
import Firebase
class Login: UIViewController, UITextFieldDelegate {

    var ref: DatabaseReference!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setup()
    }

    func setup(){
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        userText.delegate = self
        passwordText.delegate = self
        addViews()
        firebaseDatabase()
        self.navigationController?.navigationBar.isHidden = true
        let gesture = UISwipeGestureRecognizer(target: self, action: #selector(downSwipe))
        gesture.direction = .down
        view.addGestureRecognizer(gesture)
    }

    func firebaseDatabase(){
        ref = Database.database().reference()
    }

    @objc func signup(){
        print("Signup")
        navigationController?.pushViewController(Register(), animated: true)
    }
   @objc func downSwipe(){
        print("down swipe")
        passwordText.resignFirstResponder()
        userText.resignFirstResponder()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userText{
            passwordText.becomeFirstResponder()
        }else if textField == passwordText{
            passwordText.resignFirstResponder()

        }
        return true
    }

    lazy var signupLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(signup)))
        lbl.isUserInteractionEnabled = true
        lbl.textAlignment = .center
        return lbl
    }()

    let userText: UITextField = {
        let text = UITextField()
        text.backgroundColor = #colorLiteral(red: 0.9764705882, green: 0.9764705882, blue: 0.9764705882, alpha: 1)
        text.placeholder = "Username"
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: UIScreen.main.bounds.width * 0.08))
        text.leftView = leftPaddingView
        text.leftViewMode = .always
        text.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
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

    let loginButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.5490196078, blue: 0.9333333333, alpha: 1)
        btn.setTitle("Log In", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        btn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        btn.layer.cornerRadius = 10
        return btn
    }()

    let forgetLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textAlignment = .center
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let heading: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.image = #imageLiteral(resourceName: "Heading").withRenderingMode(.alwaysTemplate)
        iv.tintColor = .white
        return iv
    }()
    
   
    
    let facebookButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "facebook").withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = #colorLiteral(red: 0.1882352941, green: 0.5490196078, blue: 0.9333333333, alpha: 1)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: 4, left: -24, bottom: 4, right: -24)
        button.setTitle("Continue with facebook", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.setTitleColor(#colorLiteral(red: 0.1882352941, green: 0.5490196078, blue: 0.9333333333, alpha: 1), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    


}

