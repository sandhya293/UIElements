//
//  ViewController.swift
//  UIelements
//
//  Created by Sandhya Baghel on 20/06/21.
//  Copyright © 2021 Sandhya. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "yoga.jpg")
        imageView.animationDuration = 10.0
        imageView.startAnimating()
        return imageView
    }()
    
    private let txt:UITextView = {
        let textv = UITextView()
        textv.text = "YOGALAY"
        textv.font =  UIFont(name: "", size: 100)
        textv.textColor = UIColor.black
        return textv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
         view.addSubview(myImageView)
        view.addSubview(txt)
       
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        myImageView.isUserInteractionEnabled = true
        tapGestureRecognizer.numberOfTapsRequired = 1
         tapGestureRecognizer.numberOfTouchesRequired = 1
        myImageView.addGestureRecognizer(tapGestureRecognizer)
    }
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        _ = tapGestureRecognizer.view as! UIImageView
        
       let vc = Second()
        
        navigationController?.pushViewController(vc, animated: true)
        

        // Your action
    }
   
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        myImageView.frame = CGRect(x: 120 , y: 280 ,width: 150 ,height: 150)
        txt.frame = CGRect(x: 160 , y: 650 ,width: 280 ,height: 250)
    }
  
   
}



