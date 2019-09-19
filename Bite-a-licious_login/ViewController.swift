//
//  ViewController.swift
//  Bite-a-licious_login
//
//  Created by JIJO G OOMMEN on 17/07/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit
import TextFieldEffects
import Alamofire


class Model : NSObject {
    var name : String
    var id : String
    
    init(obj : NSDictionary){
        name = obj.value(forKey: "name")as! String
        id = obj.value(forKey: "id")as! String
    }
}


class ViewController: UIViewController {
    
    var userid : String?
    var username : String?
    var sigincondition : Bool?

    @IBOutlet var loginemail_outlet: KaedeTextField!
    
    @IBOutlet var loginpassword_outlet: KaedeTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sIgninaCtion(_ sender: Any) {
        
        let para = ["email": loginemail_outlet.text,"password": loginpassword_outlet.text]
        
        
       // let completeurl = String(baseurl + paramtrs)
        
        Alamofire.request("http://srishti-systems.info/projects/bite/login.php?", method: .post, parameters: para, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
            print(response)
            
            switch response.result{
            case.success:
                print("Login Success")
                
                self.getuserid()
               
                
            case.failure:
                print("Login failed")

        
    }
        }
    }
    
    
    func getuserid() {
        
        let email_ = String (self.loginemail_outlet.text!)
        let pass_ = String (self.loginpassword_outlet.text!)
        Alamofire.request("http://srishti-systems.info/projects/bite/login.php?email=\(email_)&password=\(pass_)").responseJSON { (reponse) in
            print(reponse)
            let mainobj =  reponse.result.value as! NSDictionary
            let user_data = mainobj["User_data"] as! NSDictionary
            let user_id = user_data.value(forKey: "id")as! String
            let user_name = user_data.value(forKey: "name")as!String
            
            self.userid  = user_id as? String
            self.username = user_name as? String
           print(self.userid as!String)
            print(self.username as! String)
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewControllerid")as! HomeViewController
            
           // vc.usernamelabel = self.username
            self.navigationController?.pushViewController(vc, animated: true)
            
            
        }
    
}

}


