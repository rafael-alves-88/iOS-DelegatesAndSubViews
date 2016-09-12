//
//  RAAMyImageViewController.swift
//  RAAAvaliacaoIntro
//
//  Created by Usuário Convidado on 23/02/16.
//  Copyright © 2016 Usuário Convidado. All rights reserved.
//

import UIKit

class RAAMyImageViewController: UIViewController, ImageSelectViewControllerDelegate {

    @IBOutlet weak var ivImage: UIImageView!
    @IBOutlet weak var btSelectImage: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selectimage(sender: AnyObject) {
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "buttonToSelectImageSegue") {
            let vc:RAAImageSelectViewController = segue.destinationViewController as! RAAImageSelectViewController
            vc.delegate = self
        }
    }
    
    func fruitIsSelected(fruit: String) {
        self.ivImage.image = UIImage(named: fruit)
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
