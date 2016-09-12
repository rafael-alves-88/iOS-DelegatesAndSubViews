//
//  RAAFormFillViewController.swift
//  RAAAvaliacaoIntro
//
//  Created by Usuário Convidado on 23/02/16.
//  Copyright © 2016 Usuário Convidado. All rights reserved.
//

import UIKit

class RAAFormFillViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var etName: UITextField!
    @IBOutlet weak var etEmail: UITextField!
    @IBOutlet weak var etPhoneNumber: UITextField!
    @IBOutlet weak var btNext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        etName.delegate = self
        etEmail.delegate = self
        etPhoneNumber.delegate = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // called when 'return' key pressed
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        if(etName.isFirstResponder()) {
            etEmail.becomeFirstResponder()
        } else if (etEmail.isFirstResponder()) {
            etPhoneNumber.becomeFirstResponder()
        }
        
        textField.resignFirstResponder()
        
        return false;
    }

    @IBAction func openDetails(sender: AnyObject) {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "buttonToFormDetailSegue") {
            let vc:RAAFormDetailViewController = segue.destinationViewController as! RAAFormDetailViewController
            vc.theName = etName!.text!
            vc.theEmail = etEmail!.text!
            vc.thePhoneNumber = etPhoneNumber!.text!
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
