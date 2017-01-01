//
//  ViewController.swift
//  TodayExWtihFB
//
//  Created by Perry Z Chen on 12/31/16.
//  Copyright © 2016 Perry Z Chen. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {

    var reference: FIRDatabaseReference?
    
    lazy var shareDefaults: UserDefaults = {
        return UserDefaults.init(suiteName: "group.fireBaseTodayExtension")
    }()!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.reference = FIRDatabase.database().reference().child("iostodayextension")
        self.reference?.observe(.value, with: { (snapshot) in
            let valueDic = snapshot.value as! [String: AnyObject]
            print(valueDic)

        }, withCancel: { (err) in
            print(err)
        })
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func actionClick(_ sender: Any) {
        self.shareDefaults.set("aaaaaa", forKey: "key")
        self.shareDefaults.synchronize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

