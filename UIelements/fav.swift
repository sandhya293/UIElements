//
//  fav.swift
//  UIelements
//
//  Created by Sandhya Baghel on 23/06/21.
//  Copyright © 2021 Sandhya. All rights reserved.
//

import Foundation
import UIKit
class fav: UIViewController {
   
    private let myLabel:UILabel = {
              let label = UILabel()
        label.text = "Notification:OFF"
              label.textAlignment = .left
              label.backgroundColor = UIColor.white
            label.font = label.font.withSize(25)
              return label
          }()
 
    private let btn:UIButton = {
           let button =  UIButton()
           button.setTitle("LOGOUT", for: .normal)
           button.addTarget(self, action: #selector(handleButtonClick), for: .touchUpInside)
           button.backgroundColor = UIColor.white
          
           button.setTitleColor(UIColor.blue, for: .normal)
           button.layer.cornerRadius = 6
           return button
       }()
    
  private let mySlider:UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 10
        slider.addTarget(self, action: #selector(handleSlider), for: .valueChanged)
        return slider
    }()
   
   /*  private let myStepper:UIStepper = {
        let stepper = UIStepper()
        stepper.minimumValue = 0
        stepper.maximumValue = 10
        stepper.addTarget(self, action: #selector(handleStepper), for: .valueChanged)
        return stepper
    }()*/
    
    private let mySwitch:UISwitch = {
        let switcher = UISwitch()
        switcher.addTarget(self, action: #selector(handleSwitch), for: .valueChanged)
        return switcher
    }()

    
override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view.
    title = "Setting"
     
      view.addSubview(myLabel)

   // view.addSubview(mySlider)
   // view.addSubview(myStepper)
    view.addSubview(mySwitch)
   view.addSubview(btn)

   self.view.backgroundColor = UIColor.white
    
    
  }
    
  
   @objc func handleSlider() {
           print(mySlider.value)
       }
       
      
       @objc func handleSwitch() {
           print(mySwitch.isOn)
        if(mySwitch.isOn == true){
        myLabel.text = "Notification:ON"
        }else
        {
        myLabel.text = "Notification:OFF"
        }
       }
   

   override func viewWillLayoutSubviews(){
       super.viewWillLayoutSubviews()
      
       myLabel.frame = CGRect(x: 10 , y: 80 , width: 190 , height: 30)
    
   /*  @objc func handleStepper() {
                  print(myStepper.value)
              }
     */
         btn.frame = CGRect(x: 10, y: 135, width:100, height: 40)
          // mySlider.frame = CGRect(x: 20, y: 140, width:100, height: 40)
          //  myStepper.frame = CGRect(x: 20, y: 230, width:100, height: 40)
            mySwitch.frame = CGRect(x: 310, y: 80, width: 40, height: 40)
            
   }
    @objc func handleButtonClick(){
            let vc = Second()
                  
                  navigationController?.pushViewController(vc, animated: true)
       }
    
}

