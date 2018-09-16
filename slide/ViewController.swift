//
//  ViewController.swift
//  slide
//
//  Created by Koray Birand on 16.09.2018.
//  Copyright © 2018 Koray Birand. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

  
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    
    @IBAction func open(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name(rawValue: "collapse"), object: nil )
    }

    

}

