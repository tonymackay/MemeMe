//
//  MemeDetailViewController.swift
//  MemeMe
//
//  Created by Tony Mackay on 22/04/2020.
//  Copyright © 2020 ViewModel Software. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {
    
    static let identifier = "MemeDetailViewController"
    
    @IBOutlet weak var memeImageView: UIImageView!
    
    var meme: Meme!
    
    override func viewWillAppear(_ animated: Bool) {
        memeImageView.image = meme.memedImage
    }
}
