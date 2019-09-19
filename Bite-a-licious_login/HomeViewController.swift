//
//  HomeViewController.swift
//  Bite-a-licious_login
//
//  Created by JIJO G OOMMEN on 18/07/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit
import Alamofire

class HomeViewController: UIViewController {

   // let username_dis : String?
  //  let userid_dis : String?
    
    @IBOutlet var usernamelabel: UILabel!
    
    
    @IBOutlet var AccountButton: UIButton!
    var menushowing = false
    
    @IBOutlet var leadingcon: NSLayoutConstraint!
    @IBOutlet var viewoutlet: UIView!
    @IBOutlet var YourAccountBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //  usernamelabel.text = usernamelabel
        
        //  print("username_dis \(usernamelabel)" )
        print("usernamelabel.text : \(usernamelabel.text)")
        
//       if (username_dis?.isEmpty == true){
//           AccountButton.isHidden = false
//          YourAccountBtn.isHidden = true
//       }      else  {
//           YourAccountBtn.isHidden = false
//           AccountButton.isHidden = false
//       }
//
        
       
        
         viewoutlet.isHidden = true
    }
    
    @IBAction func BurGerBtN(_ sender: Any) {
        
        if (menushowing){
            leadingcon.constant = -190
            viewoutlet.isHidden = true
            
        }
        else {
            leadingcon.constant = 0
            
            UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
                self.view.layoutIfNeeded()
            }, completion: nil)
            viewoutlet.isHidden = false
        }
        menushowing = !menushowing
    }
    
    @IBAction func uSerAccount(_ sender: Any) {
        viewoutlet.isHidden = true
    }
    

}
