//
//  myNSSplitViewController.swift
//  slide
//
//  Created by Koray Birand on 16.09.2018.
//  Copyright © 2018 Koray Birand. All rights reserved.
//

import Cocoa

class myNSSplitViewController: NSSplitViewController {
    
    @IBOutlet weak var mySplitView: NSSplitView!
    @IBOutlet weak var itemOne: NSSplitViewItem!
    
    
    override func viewWillAppear() {
        itemOne.isCollapsed = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mySplitView.setPosition(250, ofDividerAt: 0)
        createObservers()
    }
    

    
    
    func createObservers() {
        NotificationCenter.default.addObserver(self, selector: #selector(myNSSplitViewController.collapse), name: Notification.Name(rawValue: "collapse"), object: nil)
    }
    
    @objc func collapse()  {
        if itemOne.isCollapsed {
            itemOne.animator().isCollapsed = false
        } else {
            itemOne.animator().isCollapsed = true
        }
    }
    
    override func splitView(_ splitView: NSSplitView, effectiveRect proposedEffectiveRect: NSRect, forDrawnRect drawnRect: NSRect, ofDividerAt dividerIndex: Int) -> NSRect {
        return NSZeroRect
    }
    
}
