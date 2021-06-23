//
//  Login.swift
//  UIelements
//
//  Created by Sandhya Baghel on 23/06/21.
//  Copyright © 2021 Sandhya. All rights reserved.
//

import Foundation

import UIKit


class Login: UIViewController {
    
    
   
    
    private let myLabel:UILabel = {
           let label = UILabel()
           label.text = "LogIn"
           label.textAlignment = .center
         //  label.backgroundColor = UIColor.white
           label.font = UIFont(name: "Courier", size: 25)
           return label
       }()
    private let Label:UILabel = {
           let label = UILabel()
           label.text = "Forgotten Your Login details?"
           label.textAlignment = .center
        label.textColor =  UIColor.gray
         //  label.backgroundColor = UIColor.white
           label.font = UIFont(name: "Courier", size: 15)
           return label
       }()
    private let Label1:UILabel = {
              let label = UILabel()
              label.text = "Get Help with login."
              label.textAlignment = .center
           label.textColor =  UIColor.blue
            //  label.backgroundColor = UIColor.white
              label.font = UIFont(name: "Courier", size: 15)
              return label
          }()
    
    private let text:UITextField = {
        let txt = UITextField()
        txt.placeholder = "user name"
        txt.textAlignment = .center
        txt.backgroundColor = UIColor.white
       
        return txt
        
    }()
    
    private let TextField:UITextField = {
           let textField = UITextField()
           textField.placeholder = "Password"
           textField.textAlignment = .center
           textField.borderStyle = .roundedRect
           textField.backgroundColor = UIColor.white
         
           return textField
       }()
    
    
    private let btn:UIButton = {
        let button =  UIButton()
        button.setTitle("logIn", for: .normal)
        button.addTarget(self, action: #selector(handleButtonClick), for: .touchUpInside)
        button.backgroundColor = UIColor.black
        //button.textColor = UIColor.blue
      //  button.setTitleColor(UIColor.blue, for: .normal)
        button.layer.cornerRadius = 6
        return button
    }()
    
   
       
    
    override func viewDidLoad() {
       super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        view.addSubview(btn)
        view.addSubview(text)
        view.addSubview(TextField)
        view.addSubview(myLabel)
         view.addSubview(Label)
         view.addSubview(Label1)
        title = "Login"
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "back2")!)
    }
    override func viewWillLayoutSubviews(){
        super.viewWillLayoutSubviews()
       
        myLabel.frame = CGRect(x: 30 , y: 290 , width: 350 , height: 40)
        text.frame = CGRect(x: 30 , y: 350 , width: 350 , height: 30)
        TextField.frame = CGRect(x: 30 , y: 400 , width: 350 , height: 30)
       
        btn.frame = CGRect(x: 30 , y: 470 , width: 350 , height: 50)
        Label.frame = CGRect(x: 30 , y: 530 , width: 350 , height: 20)
        Label1.frame = CGRect(x: 30 , y: 555 , width: 350 , height: 20)
    }

     @objc func handleButtonClick(){
         let vc = Home()
        
         vc.text = text.text ?? ""
         navigationController?.pushViewController(vc, animated: true)
     }
}
