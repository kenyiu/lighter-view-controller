//
//  PhotosArrayDataSource.swift
//  separateDataSource
//
//  Created by ken yiu on 21/1/2016.
//  Copyright © 2016 ken yiu. All rights reserved.
//

import UIKit

class PhotosArrayDataSource: NSObject, UITableViewDataSource {
    typealias TableViewConfigureCellBlock = (cell:UITableViewCell, item: Any) -> Void
    
    var photos:[Photo]
    var cellIdentifier: String
    var configureCellBlock: TableViewConfigureCellBlock
    
    init(items: [Photo], cellIdentifier: String, configureCellBlock: TableViewConfigureCellBlock) {
        self.photos =  items
        self.cellIdentifier = cellIdentifier
        self.configureCellBlock = configureCellBlock
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("table view called counting function: \(photos.count)")
        return photos.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        print("table view called the cell creation")
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)
        
        configureCellBlock(cell: cell, item: photos[indexPath.row])
        
        return cell
    }
}