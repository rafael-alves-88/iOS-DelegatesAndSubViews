//
//  RAAImageSelectViewController.swift
//  RAAAvaliacaoIntro
//
//  Created by Usuário Convidado on 23/02/16.
//  Copyright © 2016 Usuário Convidado. All rights reserved.
//

import UIKit

protocol ImageSelectViewControllerDelegate: class {
    func fruitIsSelected(fruit:String)
}

class RAAImageSelectViewController: UIViewController {

    var fruitsArr:[String] = ["abacaxi", "banana", "cereja", "kiwi", "laranja", "limao", "manga", "uva"]
    var delegate:ImageSelectViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let topXLeft: CGFloat = 90
        let topXRight: CGFloat = 180
        var topY: CGFloat = 0
        
        for (var i = 0; i < fruitsArr.count; i++) {
            var topX: CGFloat = 0
            if (i % 2 == 0) {
                topY = topY + 80
                topX = topXLeft
            } else {
                topX = topXRight
            }

            let fruitButton = UIButton()
            fruitButton.setImage(UIImage(named: fruitsArr[i]), forState: UIControlState.Normal)
            fruitButton.frame = CGRectMake(topX, topY, 70, 70)
            fruitButton.addTarget(self, action: #selector(RAAImageSelectViewController.fruitClick(_:)), forControlEvents: UIControlEvents.TouchUpInside)
            fruitButton.tag = i
            self.view.addSubview(fruitButton)
        }

        // Do any additional setup after loading the view.
    }
    
    func fruitClick(sender: UIButton!) {
        delegate?.fruitIsSelected(fruitsArr[sender.tag])
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
