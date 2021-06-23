//
//  Second.swift
//  UIelements
//
//  Created by Sandhya Baghel on 21/06/21.
//  Copyright © 2021 Sandhya. All rights reserved.
//

import Foundation

import UIKit

class Second: UIViewController {
    
    private let btn:UIButton = {
        let button =  UIButton()
        button.setTitle("already have an account?", for: .normal)
        button.addTarget(self, action: #selector(handleButtonClick), for: .touchUpInside)
        button.backgroundColor = UIColor.blue
        //button.textColor = UIColor.blue
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 6
        return button
    }()
    private let txt:UITextView = {
           let textv = UITextView()
           textv.text = "YOGALAY"
        
        //textv.font = textv.font?.withSize(30)
        textv.font = UIFont(name: "Courier", size: 25)
           textv.textColor = UIColor.black
           return textv
       }()
    private let btn1:UIButton = {
        let button =  UIButton()
        button.setTitle("new here", for: .normal)
        button.addTarget(self, action: #selector(handleButton1Click), for: .touchUpInside)
        button.backgroundColor = UIColor.white
        //button.textColor = UIColor.blue
        button.setTitleColor(UIColor.blue, for: .normal)
        button.layer.cornerRadius = 6
        return button
    }()
   private let myPickerView = UIPickerView()
       private let pickerData = ["English(United Kingdom)", "Filipino", "Dansk", "Deutsch", "Italiano", "Magyar", "Polski", "Roman", "Suomi"]
    

   override func viewDidLoad() {
       super.viewDidLoad()
       // Do any additional setup after loading the view.
   
        view.addSubview(btn)
       view.addSubview(btn1)
    view.addSubview(txt)
    view.addSubview(myPickerView)
    myPickerView.dataSource = self
    myPickerView.delegate = self
                
    self.view.backgroundColor = UIColor.white
   }
    

    override func viewWillLayoutSubviews(){
        super.viewWillLayoutSubviews()
       
        myPickerView.frame = CGRect(x: 100 , y: 65 , width: 220 , height: 45)
        btn.frame = CGRect(x: 30 , y: 400 , width: 350 , height: 30)
        btn1.frame = CGRect(x: 30 , y: 450 , width: 350 , height: 30)
         txt.frame = CGRect(x: 150 , y: 340 , width: 250 , height: 40)

    }
  
    @objc func handleButtonClick(){
         let vc = Login()
               
               navigationController?.pushViewController(vc, animated: true)
    }
    @objc func handleButton1Click(){
        let vc = Third()
        
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension   Second: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(pickerData[row])
    }
}
