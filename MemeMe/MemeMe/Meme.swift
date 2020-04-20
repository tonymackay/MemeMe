//
//  Meme.swift
//  MemeMe
//
//  Created by Tony Mackay on 20/04/2020.
//  Copyright © 2020 ViewModel Software. All rights reserved.
//

import UIKit

struct Meme {
    let topText: String
    let bottomText: String
    let originalImage: UIImage
    let memedImage: UIImage
    
    func save() {
        print("saving meme to disk")
        let identifier = UUID()
        let dirPaths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let filePath = dirPaths[0].appendingPathComponent(identifier.uuidString + ".png")
        if let pngRepresentation = memedImage.pngData() {
            do  {
                try pngRepresentation.write(to: filePath,
                                            options: .atomic)
                print("Meme saved to disk: \(filePath)")
            } catch let err {
                print("Saving file resulted in error: ", err)
            }
        }
    }
}
