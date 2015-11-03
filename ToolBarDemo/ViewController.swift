//
//  ViewController.swift
//  ToolBarDemo
//
//  Created by Deki on 15/11/3.
//  Copyright © 2015年 Deki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webview1: UIWebView!
    
    @IBOutlet weak var textField1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func goBackClicked(sender: AnyObject) {
        
        webview1.goBack()
    }
    
    @IBAction func loadClick(sender: AnyObject) {
        webview1.loadRequest(NSURLRequest(URL: NSURL(string: textField1.text!)!))
    }

    @IBAction func refreshClicked(sender: AnyObject) {
        webview1.reload()
    }
    
    @IBAction func stopClicked(sender: AnyObject) {
        webview1.stopLoading()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

