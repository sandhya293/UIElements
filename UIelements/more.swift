//
//  more.swift
//  UIelements
//
//  Created by Sandhya Baghel on 23/06/21.
//  Copyright © 2021 Sandhya. All rights reserved.
//

import Foundation
import UIKit
class more: UIViewController {
   
    private let myLabel:UILabel = {
              let label = UILabel()
        label.text = "RATE THIS APP"
              label.textAlignment = .center
              label.backgroundColor = UIColor.white
            label.font = label.font.withSize(25)
              return label
          }()
 
   
    private let myLabel1:UILabel = {
          let label = UILabel()
    
          label.textAlignment = .center
          label.backgroundColor = UIColor.white
        label.font = label.font.withSize(25)
          return label
      }()
  private let mySlider:UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 10
        slider.addTarget(self, action: #selector(handleSlider), for: .valueChanged)
        return slider
    }()
  
  
override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view.
    title = "Setting"
     
      view.addSubview(myLabel)
    view.addSubview(myLabel1)
   view.addSubview(mySlider)
  
  
   self.view.backgroundColor = UIColor.white
    
    
  }
    
  
   @objc func handleSlider() {
           print(mySlider.value)
    let n = Int(mySlider.value * 10)
     let g = String(n)
    myLabel1.text = g + "%"
       }
       
    

   override func viewWillLayoutSubviews(){
       super.viewWillLayoutSubviews()
      
       myLabel.frame = CGRect(x: 110 , y: 80 , width: 190 , height: 30)
    
   /*  @objc func handleStepper() {
                  print(myStepper.value)
              }
     */
         
          mySlider.frame = CGRect(x: 110, y: 130, width:200, height: 40)

           myLabel1.frame = CGRect(x: 170 , y: 190 , width: 100 , height: 30)
        
          //  myStepper.frame = CGRect(x: 20, y: 230, width:100, height: 40)
        
   }
  
}

