//
//  TodayViewController.swift
//  CurrentWork
//
//  Created by Perry Z Chen on 12/31/16.
//  Copyright © 2016 Perry Z Chen. All rights reserved.
//

import UIKit
import NotificationCenter
import Firebase

class TodayViewController: UIViewController, NCWidgetProviding {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        FIRApp.configure()
        // Do any additional setup after loading the view from its nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func actionClick(_ sender: Any) {
        self.extensionContext?.open(URL(string: "JoeJob://ABCDEFG")!, completionHandler: { (success: Bool) in
            if success {
                
            } else {
                
            }
        })
    }

    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
}
