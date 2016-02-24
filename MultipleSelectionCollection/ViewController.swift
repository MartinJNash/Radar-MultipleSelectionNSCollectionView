//
//  ViewController.swift
//  MultipleSelectionCollection
//
//  Created by Martin Nash on 2/23/16.
//  Copyright © 2016 Martin Nash. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSCollectionViewDataSource, NSCollectionViewDelegate {

    @IBOutlet weak var collectionView: NSCollectionView!
    private let cellIdentifier = String(CustomCollectionViewItem)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = NSCollectionViewFlowLayout()
        layout.itemSize = NSSize(width: 100, height: 100)
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        collectionView.collectionViewLayout = layout

        collectionView.selectable = true
        collectionView.allowsEmptySelection = true
        collectionView.allowsMultipleSelection = false

        collectionView.registerClass(CustomCollectionViewItem.self, forItemWithIdentifier: cellIdentifier)
        collectionView.dataSource = self
        collectionView.delegate = self
    }



    // MARK: - NSCollectionViewDataSource
    
    func collectionView(collectionView: NSCollectionView, itemForRepresentedObjectAtIndexPath indexPath: NSIndexPath) -> NSCollectionViewItem {
        let cell = collectionView.makeItemWithIdentifier(cellIdentifier, forIndexPath: indexPath)
        return cell
    }
    
    func collectionView(collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1_000
    }
    
    

    
    // MARK: - NSCollectionViewDelegate
    
    func collectionView(collectionView: NSCollectionView, didSelectItemsAtIndexPaths indexPaths: Set<NSIndexPath>) {
        print("Allows multiple selection:", collectionView.allowsMultipleSelection)
        print("Number of selected items:", collectionView.selectionIndexPaths.count)
        print("")
    }

    
}

