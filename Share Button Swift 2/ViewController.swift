//
//  ViewController.swift
//  Share Button Swift 2
//
//  Created by Muztreat Indonesia on 07/02/18.
//  Copyright © 2018 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func shareBtn(sender: AnyObject) {
        
        //Set the default sharing message.
        let message = "Message goes here. Halo saya David Salam kenal"
        //Set the link to share.
        if let link = NSURL(string: "https://codemargonda.com")
        {
            let objectsToShare = [message,link]
            let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
            activityVC.excludedActivityTypes = [UIActivityTypeAirDrop, UIActivityTypeAddToReadingList]
            self.presentViewController(activityVC, animated: true, completion: nil)
        }
        
    }

}

