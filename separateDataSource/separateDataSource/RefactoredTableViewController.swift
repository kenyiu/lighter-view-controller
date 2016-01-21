//
//  RefactoredTableViewController.swift
//  separateDataSource
//
//  Created by ken yiu on 21/1/2016.
//  Copyright © 2016 ken yiu. All rights reserved.
//

import UIKit

class RefactoredTableViewController: UIViewController {
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
        
        photosDataSource = PhotosArrayDataSource(items: photos, cellIdentifier: "TableViewCell") { cell, item in
            if let theCell = cell as? TableViewCell, thePhoto = item as? Photo {
                theCell.setCell(thePhoto.name)
            }
        }
        
        self.tableView.dataSource = photosDataSource
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
