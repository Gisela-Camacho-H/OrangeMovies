//
//  ViewController.swift
//  OrangeMovies
//
//  Created by GiselaCamacho on 13/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    var mainText: UILabel?
    var marcoParra: UILabel?
    var mainButton: UIButton?
    var anotherButton: UIButton?

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
        
        let marcoParra = UILabel(frame: CGRect(x: UIScreen.main.bounds.width/2 - 50, y: 250 , width: 200, height: 40))
        marcoParra.text = "Marco Parra"
        marcoParra.textColor = .red
        view.addSubview(marcoParra)
        
        let mainButton = UIButton(frame: CGRect(x: UIScreen.main.bounds.width/2 - 30, y: 600 , width: 60, height: 60))
        mainButton.setTitleColor(UIColor.cyan, for: .normal)
        //mainButton.layer.cornerRadius = 10
        mainButton.backgroundColor = .white
        mainButton.setTitle("Ya rapidito!", for: .normal)
        mainButton.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
        view.addSubview(mainButton)
    }
    
    @objc func buttonTap(){
        print("Thank you!")
        let goLogin = TabBarViewController()
        goLogin.modalPresentationStyle = .fullScreen
        present(goLogin, animated: true, completion: nil)
    }
}

