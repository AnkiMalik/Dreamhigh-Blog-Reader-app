//
//  DetailViewController.swift
//  Blog Reader
//
//  Created by Ankit Malik on 19/07/18.
//  Copyright © 2018 Ankit Malik. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            
            self.title = detail.value(forKey: "title") as! String
            
            if let blogWebView = webView {
                blogWebView.loadHTMLString((detail.value(forKey: "content") as? String)!, baseURL: nil) 
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

