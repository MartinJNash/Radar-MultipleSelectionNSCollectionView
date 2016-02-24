//
//  CustomCollectionViewItem.swift
//  MultipleSelectionCollection
//
//  Created by Martin Nash on 2/23/16.
//  Copyright © 2016 Martin Nash. All rights reserved.
//

import Cocoa

class CustomCollectionViewItem: NSCollectionViewItem {

    private var backgroundColor: NSColor = NSColor.greenColor()
    private var selectedBackgroundColor: NSColor = NSColor.redColor()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.wantsLayer = true
        updateBackground()
    }
    
    private func updateBackground() {
        if selected {
            view.layer?.backgroundColor = backgroundColor.CGColor
        }
        else {
            view.layer?.backgroundColor = selectedBackgroundColor.CGColor
        }
    }
    
    override var selected: Bool {
        didSet {
            updateBackground()
        }
    }
    
    
    
}
