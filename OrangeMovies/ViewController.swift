//
//  ViewController.swift
//  OrangeMovies
//
//  Created by GiselaCamacho on 13/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    var mainText: UILabel?
    var mainButton: UIButton?
    var emailTextField: UITextField?
    var passwordTextField: UITextField?
    var validationText: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }

    func initUI() {
        view.backgroundColor = .orange
        let mainText = UILabel(frame: CGRect(x: UIScreen.main.bounds.width/2 - 50, y: 200 , width: 200, height: 40))
        mainText.text = "Orange Movies"
        mainText.textColor = .white
        view.addSubview(mainText)
        
        let emailTextField = UITextField(frame: CGRect(x: 50, y: 300 , width: 300, height: 60))
        emailTextField.layer.cornerRadius = 7
        emailTextField.layer.borderWidth = 1
        emailTextField.backgroundColor = .white
        emailTextField.textAlignment = NSTextAlignment.left
        emailTextField.keyboardType = UIKeyboardType.default
        emailTextField.textColor = .blue
        emailTextField.clearButtonMode = UITextField.ViewMode.whileEditing
        emailTextField.leftViewMode = UITextField.ViewMode.always
        emailTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        self.emailTextField = emailTextField
        view.addSubview(emailTextField)
        
        let passwordTextField = UITextField(frame: CGRect(x: 50, y: 400 , width: 300, height: 60))
        passwordTextField.layer.cornerRadius = 7
        passwordTextField.layer.borderWidth = 1
        passwordTextField.backgroundColor = .white
        passwordTextField.textAlignment = NSTextAlignment.left
        passwordTextField.keyboardType = UIKeyboardType.default
        passwordTextField.textColor = .blue
        passwordTextField.clearButtonMode = UITextField.ViewMode.whileEditing
        passwordTextField.leftViewMode = UITextField.ViewMode.always
        passwordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        self.passwordTextField = passwordTextField
        view.addSubview(passwordTextField)
        
        var validationText = UILabel(frame: CGRect(x: UIScreen.main.bounds.width/2 - 50, y: 500 , width: 200, height: 40))
        validationText.text = ""
        validationText.textColor = .white
        self.validationText = validationText
        view.addSubview(validationText)
        
        let mainButton = UIButton(frame: CGRect(x: UIScreen.main.bounds.width/2 - 50 , y: 600 , width: 100, height: 60))
        mainButton.setTitleColor(UIColor.cyan, for: .normal)
        //mainButton.layer.cornerRadius = 10
        mainButton.backgroundColor = .white
        mainButton.setTitle("Login", for: .normal)
        mainButton.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
        view.addSubview(mainButton)
    }
    
    
    //MARK: - Accion Buttons
    
    @objc func buttonTap(){
        
        if emailTextField?.text == "" {
            print("missing email")
            validationText?.text = "Escribe un email"
            return
            }
        if passwordTextField?.text == "" {
            print("missing password")
            validationText?.text = "Escribe un password"
            return
        }
        else {
            let goLogin = TabBarViewController()
            goLogin.modalPresentationStyle = .fullScreen
            present(goLogin, animated: true, completion: nil)
        }
    }
}

