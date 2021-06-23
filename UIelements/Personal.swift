//
//  Personal.swift
//  UIelements
//
//  Created by Sandhya Baghel on 22/06/21.
//  Copyright © 2021 Sandhya. All rights reserved.
//

import Foundation

import UIKit
class Personal: UIViewController {
    var gender:Int = 0
      var text:String = ""
    var n:Int = 0
    private let tabBar:UITabBar = {
        let tabBar = UITabBar()
        let more = UITabBarItem(tabBarSystemItem: .more, tag: 1)
        
        let fav = UITabBarItem(tabBarSystemItem: .favorites, tag: 2)
       
      //  tabBar.addSubview(<#T##view: UIView##UIView#>)
        tabBar.items = [more, fav]
        return tabBar
    }()
    
    private let myImageView:UIImageView = {
              let imageView = UIImageView()
              imageView.contentMode = .scaleAspectFill
            //  imageView.clipsToBounds = true
              imageView.image = UIImage(named: "asan1.jpg")
        //imageView.layer.cornerRadius = frame.size.width / 2;
                  
              return imageView
          }()
    private let myLabel:UILabel = {
          let label = UILabel()
        
          label.textAlignment = .left
          label.backgroundColor = UIColor.white
          label.font = label.font.withSize(25)
          return label
      }()
    private let btn:UIButton = {
        let button =  UIButton()
        button.setTitle("Change Profile", for: .normal)
        button.addTarget(self, action: #selector(handleButtonClick), for: .touchUpInside)
        button.backgroundColor = UIColor.white
        //button.textColor = UIColor.blue
        button.setTitleColor(UIColor.blue, for: .normal)
        button.layer.cornerRadius = 6
        return button
    }()

    private let myLabel1:UILabel = {
          let label = UILabel()
        
          label.textAlignment = .left
          label.backgroundColor = UIColor.white
          label.font = label.font.withSize(25)
          label.text = "Age : 25"
          return label
      }()
    
    private let myLabel2:UILabel = {
          let label = UILabel()
          
          label.textAlignment = .left
          label.backgroundColor = UIColor.white
    label.font = label.font.withSize(25)
          return label
      }()
    private let myLabel3:UILabel = {
            let label = UILabel()
            label.text = "DOB : 29-03-1999"
            label.textAlignment = .left
            label.backgroundColor = UIColor.white
      label.font = label.font.withSize(25)
            return label
        }()

    override func viewDidLoad() {
               super.viewDidLoad()
               title = "Personal"
               view.backgroundColor = .white
               view.addSubview(myImageView)
               view.addSubview(tabBar)
                view.addSubview(myLabel)
                view.addSubview(myLabel1)
                 view.addSubview(myLabel2)
          view.addSubview(myLabel3)
         view.addSubview(btn)
       imagePicker.delegate = self
    
    //    print(tabBar.n)
               tabBar.delegate = self
        myLabel.text = "Name  "+text
        if(gender==1){
               myLabel2.text = "Gender : Female"
          }
          else
          {
               myLabel2.text = "Gender : Male"
          }
           }
           
           override func viewDidLayoutSubviews() {
               super.viewDidLayoutSubviews()
            let tabBarHeight:CGFloat = view.safeAreaInsets.bottom + 49
            tabBar.frame = CGRect(x: 10, y: 670, width: 420, height: tabBarHeight)
              myImageView.frame = CGRect(x: 100, y: 100, width: 200, height:200)
                     self.myImageView.layer.cornerRadius = self.myImageView.frame.size.width / 2;
                     self.myImageView.clipsToBounds = true;
            myLabel.frame = CGRect(x: 10, y: 350, width: 200, height:30)
             myLabel1.frame = CGRect(x: 10, y: 400, width: 200, height:30)
             myLabel2.frame = CGRect(x: 10, y: 450, width: 200, height:30)
           myLabel3.frame = CGRect(x: 10, y: 500, width: 200, height:30)
           btn.frame = CGRect(x: 130, y: 310, width: 160, height:30)
       }
    @objc func handleButtonClick(){
        _ = UIBarButtonItem(barButtonSystemItem: .organize, target: self, action: #selector(handleGallery))
        handleGallery()
       }
    @objc private func handleGallery() {
               print("gallery called")
               imagePicker.sourceType = .photoLibrary
               DispatchQueue.main.async {
                   self.present(self.imagePicker, animated: true)
               }
           }
    private let imagePicker:UIImagePickerController = {
              let imagePicker = UIImagePickerController()
              imagePicker.allowsEditing = false
              return imagePicker
          }()
}

extension Personal: UITabBarDelegate {
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print(item.tag)
        if(item.tag == 1){
            let vc = fav()
            navigationController?.pushViewController(vc, animated: true)
            
        }else
        {
            let vc = more()
            navigationController?.pushViewController(vc, animated: true)
            
        }
    }
}
extension Personal:UIImagePickerControllerDelegate, UINavigationControllerDelegate {
       func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
           
           if let selectedImage = info[.originalImage] as? UIImage {
               myImageView.image = selectedImage
           }
           
           picker.dismiss(animated: true)
       }
       
       func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true)
               }
           }

