//
//  RegisterPageViewController.swift
//  Bite-a-licious_login
//
//  Created by JIJO G OOMMEN on 17/07/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit
import Alamofire

class RegisterPageViewController: UIViewController {
    
    
    @IBOutlet var username_outlet: UITextField!
    @IBOutlet var dob_outlet: UITextField!
    @IBOutlet var email_outlet: UITextField!
    @IBOutlet var password_outlet: UITextField!
    @IBOutlet var confirmpassword_outlet: UITextField!
    @IBOutlet var location_outlet: UITextField!
    @IBOutlet var contactno_outlet: UITextField!
    @IBOutlet var postalcode_outlet: UITextField!
    @IBOutlet var blockno_outlet: UITextField!
    @IBOutlet var unitno_outlet: UITextField!
    @IBOutlet var floor_outlet: UITextField!
    @IBOutlet var street_outlet: UITextField!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func rEgisteraCtion(_ sender: UIButton) {
        let params = ["name": username_outlet.text!,"dob": dob_outlet.text!,"email": email_outlet.text!,"password": password_outlet.text!,"confirmpassword": confirmpassword_outlet.text!,"location": location_outlet.text!,"contactnum": contactno_outlet.text!,"postalcode": postalcode_outlet.text!,"blockno": blockno_outlet.text!,"floor": floor_outlet.text!,"unitno" : unitno_outlet.text!,"street": street_outlet.text!]
        
        Alamofire.request("http://srishti-systems.info/projects/bite/register.php?", method: .post, parameters: params, encoding: URLEncoding.default, headers: nil) .responseJSON { response in
            
            switch response.result{
            case .success(let json):
                print(response)
                print(json)
                
                print(self.username_outlet.text)
                print(self.password_outlet.text)
                //---------------Alert box for showing successful registeration --------------//
                let success_alert = UIAlertController(title: "Regiseration Success", message: "Welcome", preferredStyle: .alert)
                success_alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
                self.present(success_alert,animated: true,completion: nil)
                
                //----------------end of success alert--------------//
                
            case.failure(let error):
                print("error")
                //-----------registeration failure alert --------------//
                
                let fail_alert = UIAlertController(title: "Regiseration Failure", message: "try again", preferredStyle: .alert)
                fail_alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
                self.present(fail_alert,animated: true,completion: nil)
                
                //-------------end of failre alert-------------------//
            }
            
        }
        
    }
        
        
    }
    

