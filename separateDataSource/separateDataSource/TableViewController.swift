//
//  TableViewController.swift
//  separateDataSource
//
//  Created by ken yiu on 21/1/2016.
//  Copyright © 2016 ken yiu. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var photosDataSource: PhotosArrayDataSource?
    var photos:[Photo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photos.append(Photo(name: "Apple"))
        photos.append(Photo(name: "Banana"))
        photos.append(Photo(name: "Cat"))
        photos.append(Photo(name: "Dog"))
        photos.append(Photo(name: "Egg"))
        photos.append(Photo(name: "Fish"))
        
        self.tableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension TableViewController: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TableViewCell", forIndexPath: indexPath)
        
        if let theCell = cell as? TableViewCell {
            theCell.setCell(photos[indexPath.row].name)
        }
        
        return cell
    }
}