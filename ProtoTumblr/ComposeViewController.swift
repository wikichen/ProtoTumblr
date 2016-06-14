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
    var textButtonInitialCenter: CGPoint!
    var photoButtonInitialCenter: CGPoint!
    var quoteButtonInitialCenter: CGPoint!
    var linkButtonInitialCenter: CGPoint!
    var chatButtonInitialCenter: CGPoint!
    var videoButtonInitialCenter: CGPoint!
    
    var fadeTransition: FadeTransition!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        textButtonInitialCenter = textButtonView.center
        photoButtonInitialCenter = photoButtonView.center
        quoteButtonInitialCenter = quoteButtonView.center
        linkButtonInitialCenter = linkButtonView.center
        chatButtonInitialCenter = chatButtonView.center
        videoButtonInitialCenter = videoButtonView.center
        
        textButtonView.center = CGPoint(x: textButtonInitialCenter.x, y: textButtonInitialCenter.y + 768)
        linkButtonView.center = CGPoint(x: linkButtonInitialCenter.x, y: linkButtonInitialCenter.y + 768)
        photoButtonView.center = CGPoint(x: photoButtonInitialCenter.x, y: photoButtonInitialCenter.y + 768)
        chatButtonView.center = CGPoint(x: chatButtonInitialCenter.x, y: chatButtonInitialCenter.y + 768)
        quoteButtonView.center = CGPoint(x: quoteButtonInitialCenter.x, y: quoteButtonInitialCenter.y + 768)
        videoButtonView.center = CGPoint(x: videoButtonInitialCenter.x, y: videoButtonInitialCenter.y + 768)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        // left col
        UIView.animateWithDuration(0.6, delay: 0.1, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options:[] , animations: { () -> Void in
            
            self.textButtonView.center = self.textButtonInitialCenter
            self.linkButtonView.center = self.linkButtonInitialCenter
            
            }, completion: nil)
        
        // center col
        UIView.animateWithDuration(0.6, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options:[] , animations: { () -> Void in
            
            self.photoButtonView.center = self.photoButtonInitialCenter
            self.chatButtonView.center = self.chatButtonInitialCenter
            
            }, completion: nil)
        
        // right col
        UIView.animateWithDuration(0.6, delay: 0.1, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options:[] , animations: { () -> Void in
            
            self.quoteButtonView.center = self.quoteButtonInitialCenter
            self.videoButtonView.center = self.videoButtonInitialCenter
            
            }, completion: nil)
    }
    
    override func viewDidDisappear(animated: Bool) {
        // left col
        UIView.animateWithDuration(0.6, delay: 0.1, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options:[] , animations: { () -> Void in
            
            self.textButtonView.center = CGPoint(x: self.textButtonInitialCenter.x, y: self.textButtonInitialCenter.y - 768)
            self.linkButtonView.center = CGPoint(x: self.linkButtonInitialCenter.x, y: self.linkButtonInitialCenter.y - 768)
            
            }, completion: nil)
        
        // center col
        UIView.animateWithDuration(0.6, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options:[] , animations: { () -> Void in
            
            self.photoButtonView.center = CGPoint(x: self.photoButtonInitialCenter.x, y: self.photoButtonInitialCenter.y - 768)
            self.chatButtonView.center = CGPoint(x: self.chatButtonInitialCenter.x, y: self.chatButtonInitialCenter.y - 768)
            
            }, completion: nil)
        
        // right col
        UIView.animateWithDuration(0.6, delay: 0.1, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options:[] , animations: { () -> Void in
            
            self.quoteButtonView.center = CGPoint(x: self.quoteButtonInitialCenter.x, y: self.quoteButtonInitialCenter.y - 768)
            self.videoButtonView.center = CGPoint(x: self.videoButtonInitialCenter.x, y: self.videoButtonInitialCenter.y - 768)
            
            }, completion: nil)
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let destinationViewController = segue.destinationViewController
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
        fadeTransition = FadeTransition()
        destinationViewController.transitioningDelegate = fadeTransition
        fadeTransition.duration = 1.0
        
    }

    @IBAction func didPressCancelButton(sender: UIButton) {
        
        // left col
        UIView.animateWithDuration(0.6, delay: 0.1, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options:[] , animations: { () -> Void in
            
            self.textButtonView.center = CGPoint(x: self.textButtonInitialCenter.x, y: self.textButtonInitialCenter.y - 768)
            self.linkButtonView.center = CGPoint(x: self.linkButtonInitialCenter.x, y: self.linkButtonInitialCenter.y - 768)
            
            }, completion: nil)
        
        // center col
        UIView.animateWithDuration(0.6, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options:[] , animations: { () -> Void in
            
            self.photoButtonView.center = CGPoint(x: self.photoButtonInitialCenter.x, y: self.photoButtonInitialCenter.y - 768)
            self.chatButtonView.center = CGPoint(x: self.chatButtonInitialCenter.x, y: self.chatButtonInitialCenter.y - 768)
            
            }, completion: nil)
        
        // right col
        UIView.animateWithDuration(0.6, delay: 0.1, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options:[] , animations: { () -> Void in
            
            self.quoteButtonView.center = CGPoint(x: self.quoteButtonInitialCenter.x, y: self.quoteButtonInitialCenter.y - 768)
            self.videoButtonView.center = CGPoint(x: self.videoButtonInitialCenter.x, y: self.videoButtonInitialCenter.y - 768)
            
            }, completion: nil)
        
        dismissViewControllerAnimated(true, completion: nil)
    }

    
    

}
