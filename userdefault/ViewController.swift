//
//  ViewController.swift
//  userdefault
//
//  Created by Apple Esprit on 17/5/2022.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var field: UITextField!
    
    
    let userdefaults = UserDefaults()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        field.delegate = self
        
        
        if let value = userdefaults.value(forKey: "name") as? String{
         
            label.text = value
            
        }
       
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        
        
        //score / 100
        
        userdefaults.setValue(field.text, forKey: "name")

        field.resignFirstResponder()
        
        return true
    }


}

