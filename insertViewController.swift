//
//  ViewController.swift
//  insertData
//
//  Created by admin on 8/9/14.
//  Copyright (c) 2014 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var output: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onclick(sender: UIButton) {
        let url=NSURL(string:"http://localhost:8080/DatabaseWS/rest/emp/users")
        let req=NSURLRequest(URL:url)
        NSURLConnection.sendAsynchronousRequest(req, queue: nil,completionHandler:{(response:NSURLResponse!,data:NSData!
            ,error:NSError!)->Void in})
        
    }

}

