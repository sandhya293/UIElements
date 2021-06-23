//
//  Home.swift
//  UIelements
//
//  Created by Sandhya Baghel on 22/06/21.
//  Copyright © 2021 Sandhya. All rights reserved.
//

import Foundation
import UIKit
class Home: UIViewController {
     var i:Int = 0
    var text:String = ""
   
    private let myLabel:UILabel = {
              let label = UILabel()
            
              label.textAlignment = .center
              label.backgroundColor = UIColor.white
        label.font = label.font.withSize(30)
              return label
          }()
    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "hm")
        imageView.animationDuration = 10.0
        imageView.startAnimating()
        return imageView
    }()
    
    private let pagecontrol:UIPageControl = {
        let page = UIPageControl()
        page.numberOfPages = 5
        page.pageIndicatorTintColor = UIColor.black
        page.addTarget(self, action: #selector(pageclicked), for: .valueChanged)
        return page
    }()
    private let myImageView1:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "cm")
        imageView.animationDuration = 10.0
        imageView.startAnimating()
        return imageView
    }()
    private let myImageView3:UIImageView = {
           let imageView = UIImageView()
           imageView.contentMode = .scaleAspectFill
           imageView.clipsToBounds = true
           imageView.image = UIImage(named: "asan1.jpg")
           imageView.animationDuration = 10.0
           imageView.startAnimating()
           return imageView
       }()
    private let myImageView2:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "pr.jpg")
        imageView.animationDuration = 10.0
        imageView.startAnimating()
        return imageView
    }()
    
  private let imagePicker:UIImagePickerController = {
      let imagePicker = UIImagePickerController()
      imagePicker.allowsEditing = false
      return imagePicker
  }()
    /* private let mySlider:UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 10
        slider.addTarget(self, action: #selector(handleSlider), for: .valueChanged)
        return slider
    }()
    private let myPickerView = UIPickerView()
       private let pickerData = ["One", "Two", "Three"]
    
    private let myStepper:UIStepper = {
        let stepper = UIStepper()
        stepper.minimumValue = 0
        stepper.maximumValue = 10
        stepper.addTarget(self, action: #selector(handleStepper), for: .valueChanged)
        return stepper
    }()
    
    private let mySwitch:UISwitch = {
        let switcher = UISwitch()
        switcher.addTarget(self, action: #selector(handleSwitch), for: .valueChanged)
        return switcher
    }()*/

    
override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view.
    title = "Home"
      // view.addSubview()
      view.addSubview(myLabel)
    if(i==1){
         myLabel.text = "Welcome Mrs. "+text
    }
    else
    {
         myLabel.text = "Welcome Mr. "+text
    }
   view.addSubview(myImageView)
    view.addSubview(myImageView1)
    view.addSubview(myImageView2)
     view.addSubview(myImageView3)
   /* view.addSubview(mySlider)
    view.addSubview(myStepper)
    view.addSubview(mySwitch)*/
    view.addSubview(pagecontrol)
   /*view.addSubview(myPickerView)
           
           myPickerView.dataSource = self
           myPickerView.delegate = self*/
           
   self.view.backgroundColor = UIColor.white
    
    let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
    
    let tapGesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped1(tapGesture :)))
    myImageView1.isUserInteractionEnabled = true
    myImageView2.isUserInteractionEnabled = true
    tapGestureRecognizer.numberOfTapsRequired = 1
     tapGestureRecognizer.numberOfTouchesRequired = 1
    //myImageView.addGestureRecognizer(tapGestureRecognizer)
    myImageView1.addGestureRecognizer(tapGestureRecognizer)
    myImageView2.addGestureRecognizer(tapGesture)
  }
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
     {
         _ = tapGestureRecognizer.view as! UIImageView
         
      //  let vc = Camera()
         
       //  navigationController?.pushViewController(vc, animated: true)
        _ = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(handleCamera))
        handleCamera()
        
         // Your action
     }
    
    @objc func handleCamera() {
                     print("camera called")
                     if UIImagePickerController.isSourceTypeAvailable(.camera) {
                         imagePicker.sourceType = .camera
                         DispatchQueue.main.async {
                             self.present(self.imagePicker, animated: true)
                         }
                     } else {
                         let alert = UIAlertController(title: "Oops!", message: "Camera not found. Try picking an image from your gallery.", preferredStyle: .alert)
                         alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel))
                         DispatchQueue.main.async {
                             self.present(alert, animated: true, completion: nil)
                         }
                     }
                 }

    @objc func imageTapped1(tapGesture: UITapGestureRecognizer)
    {
        _ = tapGesture.view as! UIImageView
        
       let vc = Personal()
        vc.text = text
         vc.gender = i 
        navigationController?.pushViewController(vc, animated: true)
        

        // Your action
    }
    @objc func pageclicked() {
         print(pagecontrol.currentPage)
        if(pagecontrol.currentPage==1){
             myImageView3.image = UIImage(named: "asan2.jpg")
        }
       else if(pagecontrol.currentPage==2){
                    myImageView3.image = UIImage(named: "asan3.jpg")
        }
        else if(pagecontrol.currentPage==3){
                           myImageView3.image = UIImage(named: "asan4.jpg")
        }
        else if(pagecontrol.currentPage==4){
                           myImageView3.image = UIImage(named: "asan5.jpg")
               }
        else if(pagecontrol.currentPage==5){
                           myImageView3.image = UIImage(named: "asan5.jpg")
               }
    }
   /* @objc func handleSlider() {
           print(mySlider.value)
       }
       
       @objc func handleStepper() {
           print(myStepper.value)
       }
       
       @objc func handleSwitch() {
           print(mySwitch.isOn)
       }
   */

   override func viewWillLayoutSubviews(){
       super.viewWillLayoutSubviews()
      
       myLabel.frame = CGRect(x: 20 , y: 50 , width: 400 , height: 80)
    
   /* mySlider.frame = CGRect(x: 20, y: 140, width:100, height: 40)
    myStepper.frame = CGRect(x: 20, y: 230, width:100, height: 40)
    mySwitch.frame = CGRect(x: 20, y: 290, width: 100, height: 40)
     myPickerView.frame = CGRect(x: 20, y: 340, width:150, height: 80)*/
       myImageView.frame = CGRect(x: 10 , y: 660 , width: 80 , height: 50)
         myImageView1.frame = CGRect(x: 170 , y: 660 , width: 80 , height: 50)
    myImageView2.frame = CGRect(x: 320 , y: 660 , width: 80 , height: 50)
     myImageView3.frame = CGRect(x: 2 , y: 130 , width: 410 , height: 270)
     pagecontrol.frame = CGRect(x: 150, y: 420, width: 80, height: 40)

   }
    
}
/*extension   Home: UIPickerViewDataSource, UIPickerViewDelegate {
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
}*/
