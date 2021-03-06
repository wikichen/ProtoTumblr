//
//  TabBarViewController.swift
//  ProtoTumblr
//
//  Created by Jonathan Chen on 6/11/16.
//  Copyright © 2016 Chenlo Park. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    
    @IBOutlet weak var bubbleImageView: UIImageView!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    var viewControllers: [UIViewController]!
    var selectedIndex: Int = 0
    var bubbleInitialCenter: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        bubbleInitialCenter = bubbleImageView.center
        
        buttons[selectedIndex].selected = true
        onTabBarButtonTap(buttons[selectedIndex])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onTabBarButtonTap(sender: UIButton) {
        
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        print(sender.tag)
        
        
        buttons[previousIndex].selected = false
        
        // animate bubble

        if selectedIndex == 1 {
            UIView.animateWithDuration(0.1, animations: {
                self.bubbleImageView.alpha = 0
            })
        } else {
            UIView.animateWithDuration(1.2, delay: 0, options: [.Autoreverse, .Repeat, .CurveEaseInOut], animations: {
                    self.bubbleImageView.center.y = self.bubbleInitialCenter.y - 5
                }, completion: nil)
        }
        
        let previousVC = viewControllers[previousIndex]
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.selected = true
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMoveToParentViewController(self)
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
