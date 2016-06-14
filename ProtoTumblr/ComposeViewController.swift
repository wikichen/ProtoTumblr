//
//  ComposeViewController.swift
//  ProtoTumblr
//
//  Created by Jonathan Chen on 6/11/16.
//  Copyright © 2016 Chenlo Park. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var buttonGroupView: UIView!
    @IBOutlet weak var textButtonView: UIImageView!
    @IBOutlet weak var photoButtonView: UIImageView!
    @IBOutlet weak var quoteButtonView: UIImageView!
    @IBOutlet weak var linkButtonView: UIImageView!
    @IBOutlet weak var chatButtonView: UIImageView!
    @IBOutlet weak var videoButtonView: UIImageView!
    
    var buttonGroupViewInitialCenter: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        buttonGroupViewInitialCenter = buttonGroupView.center
        buttonGroupView.center = CGPoint(x: buttonGroupViewInitialCenter.x, y: buttonGroupViewInitialCenter.y + 768)
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.6, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options:[] , animations: { () -> Void in
            
            self.buttonGroupView.center = self.buttonGroupViewInitialCenter
            
            }, completion: nil)
    }

    @IBAction func didPressCancelButton(sender: UIButton) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }

    

}
