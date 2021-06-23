//
//  Third.swift
//  UIelements
//
//  Created by Sandhya Baghel on 21/06/21.
//  Copyright © 2021 Sandhya. All rights reserved.
//

import Foundation

import UIKit


class Third: UIViewController {
    
    
    private let myImageView:UIImageView = {
           let imageView = UIImageView()
           imageView.contentMode = .scaleAspectFill
           imageView.clipsToBounds = true
           imageView.image = UIImage(named: "yoga1.jpg")
           imageView.animationDuration = 10.0
           imageView.startAnimating()
           return imageView
       }()
    
    private let myLabel:UILabel = {
           let label = UILabel()
           label.text = "Resgister Yourself"
           label.textAlignment = .center
           label.backgroundColor = UIColor.white
        
           return label
       }()
    private let myLabel1:UILabel = {
              let label = UILabel()
              label.text = "Date Of Birth"
              label.textAlignment = .center
              label.backgroundColor = UIColor.white
           
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
    
    private let myDatePicker:UIDatePicker = {
           let datePicker = UIDatePicker()
           datePicker.datePickerMode = .date
          // datePicker.timeZone = TimeZone(secondsFromGMT: 0)
        datePicker.backgroundColor =  UIColor.white
           datePicker.addTarget(self, action: #selector(handleDateChange), for: .valueChanged)
           return datePicker
       }()
    private let btn:UIButton = {
        let button =  UIButton()
        button.setTitle("done", for: .normal)
        button.addTarget(self, action: #selector(handleButtonClick), for: .touchUpInside)
        button.backgroundColor = UIColor.black
        //button.textColor = UIColor.blue
      //  button.setTitleColor(UIColor.blue, for: .normal)
        button.layer.cornerRadius = 6
        return button
    }()
    
    private let myStepper:UIStepper = {
          let stepper = UIStepper()
          stepper.minimumValue = 0
          stepper.maximumValue = 10
          //stepper.addTarget(self, action: #selector(handleStepper), for: .valueChanged)
          return stepper
      }()
    private let mySegmentedControl:UISegmentedControl = {
           let segControl = UISegmentedControl()
           segControl.insertSegment(withTitle: "MALE", at: 0, animated: true)
           segControl.insertSegment(withTitle: "FEMALE", at: 1, animated: true)
           segControl.selectedSegmentIndex = 0
           segControl.addTarget(self, action: #selector(handleSegmentedControl), for: .valueChanged)
           return segControl
       }()
       
    
    override func viewDidLoad() {
       super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        view.addSubview(btn)
        view.addSubview(text)
        view.addSubview(TextField)
        view.addSubview(myLabel)
        view.addSubview(myLabel1)
        view.addSubview(myDatePicker)
         view.addSubview(myImageView)
         view.addSubview(mySegmentedControl)
        title = "Registration"
    }
    override func viewWillLayoutSubviews(){
        super.viewWillLayoutSubviews()
         myImageView.frame = CGRect(x: 2 , y: 2 ,width: 430 ,height: 200)
        myLabel.frame = CGRect(x: 30 , y: 210 , width: 350 , height: 30)
        text.frame = CGRect(x: 30 , y: 250 , width: 350 , height: 30)
        TextField.frame = CGRect(x: 30 , y: 300 , width: 350 , height: 30)
         myLabel1.frame = CGRect(x: 30 , y: 350 , width: 350 , height: 40)
       myDatePicker.frame = CGRect(x: 50, y: 400, width: 250, height: 50)
        mySegmentedControl.frame = CGRect(x: 20, y:480 ,width: 180, height: 40)
        btn.frame = CGRect(x: 30 , y: 550 , width: 350 , height: 50)
    
    }
   
    
   @objc func handleDateChange() {
         print(myDatePicker.date)
        text.resignFirstResponder()
        TextField.resignFirstResponder()
     }
    @objc func handleSegmentedControl() {
        
        print(mySegmentedControl.selectedSegmentIndex)
    }
    @objc func handleButtonClick(){
        let vc = Home()
        vc.i = mySegmentedControl.selectedSegmentIndex
        vc.text = text.text ?? ""
        navigationController?.pushViewController(vc, animated: true)
    }
     
}
