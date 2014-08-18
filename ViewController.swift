//
//  ViewController.swift
//  Fetchdata
//
//  Created by admin on 8/8/14.
//  Copyright  2014 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var showAll: UITextView!
    
    @IBOutlet var ipLabel: UILabel!
func handler(response: NSURLResponse!, data : NSData!, error : NSError!) {
    
    if (error) {
    println(error)
    } else {
    var ip = NSString(data:data, encoding:NSUTF8StringEncoding)
//println("async fetch: " + ip);
       self.showAll.text=ip
        self.ipLabel.text = ip
    }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var url = NSURL(string:"http://localhost:8080/GetData/restservice/emp/users")
        var request = NSURLRequest(URL: url)
        
        ipLabel.text = "Fetching...";
        
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue(), completionHandler:handler)
        
        var data = NSData(contentsOfURL:url);
        ipLabel.text =  NSString(data:data, encoding:NSUTF8StringEncoding)
        showAll.text=NSString(data:data, encoding:NSUTF8StringEncoding)
        
        println("fetch!")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    



}

