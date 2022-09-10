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

    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }

    func initUI() {
        view.backgroundColor = .blue
        let mainText = UILabel(frame: CGRect(x: UIScreen.main.bounds.width/2 - 50, y: 200 , width: 200, height: 40))
        mainText.text = "OrangeMovies"
        mainText.textColor = .white
        view.addSubview(mainText)
        
        
        let mainButton = UIButton(frame: CGRect(x: UIScreen.main.bounds.width/2 - 30, y: 600 , width: 60, height: 60))
        mainButton.setTitleColor(UIColor.cyan, for: .normal)
        //mainButton.layer.cornerRadius = 10
        mainButton.backgroundColor = .black
        mainButton.setTitle("Go!", for: .normal)
        mainButton.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
        view.addSubview(mainButton)
    }
    
    @objc func buttonTap(){
        print("Thank you!")
        let goLogin = SignInViewController()
        goLogin.modalPresentationStyle = .fullScreen
        present(goLogin, animated: true, completion: nil)
    }
}

