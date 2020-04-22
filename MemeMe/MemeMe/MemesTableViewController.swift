//
//  MemesTableViewController.swift
//  MemeMe
//
//  Created by Tony Mackay on 22/04/2020.
//  Copyright © 2020 ViewModel Software. All rights reserved.
//

import UIKit

class MemesTableViewController: UITableViewController {
    
     var memes: [Meme]! {
         let object = UIApplication.shared.delegate
         let appDelegate = object as! AppDelegate
         return appDelegate.memes
     }
    
    let reuseIdentifier: String = "MemeTableViewCell"

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! MemeTableViewCell

        // Configure the cell...
        cell.memeImageView.image = memes[indexPath.row].memedImage
        cell.topLabel.text = memes[indexPath.row].topText + "..." + memes[indexPath.row].bottomText
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: MemeDetailViewController.identifier) as! MemeDetailViewController
        detailController.meme = memes[indexPath.row]
        self.navigationController!.pushViewController(detailController, animated: true)
    }
}
