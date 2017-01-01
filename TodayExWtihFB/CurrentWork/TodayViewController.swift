//
//  TodayViewController.swift
//  CurrentWork
//
//  Created by Perry Z Chen on 12/31/16.
//  Copyright © 2016 Perry Z Chen. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
    
    
    @IBOutlet weak var lblContent: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        print("###### extension init")
        NotificationCenter.default.addObserver(self, selector: #selector(valueChanged(notification:)), name: UserDefaults.didChangeNotification, object: nil)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("######### enter extension")
        self.updateValue()
        // Do any additional setup after loading the view from its nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func valueChanged(notification: Notification) {
        self.updateValue()
    }
    
    func updateValue() {
        let defaults = UserDefaults.init(suiteName: "group.fireBaseTodayExtension")
        let str: String = defaults?.value(forKey: "key") as! String
        print(str)
        self.lblContent.text = str
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
