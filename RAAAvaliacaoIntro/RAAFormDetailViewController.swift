//
//  RAAFormDetailViewController.swift
//  RAAAvaliacaoIntro
//
//  Created by Usuário Convidado on 23/02/16.
//  Copyright © 2016 Usuário Convidado. All rights reserved.
//

import UIKit

class RAAFormDetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    var theName: String = ""
    var theEmail: String = ""
    var thePhoneNumber: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = theName
        emailLabel.text = theEmail
        phoneNumberLabel.text = thePhoneNumber
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
