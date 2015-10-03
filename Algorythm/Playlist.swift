//
//  Playlist.swift
//  Algorythm
//
//  Created by Chris Augg on 10/3/15.
//  Copyright © 2015 Auggie Doggie iOSware. All rights reserved.
//

import Foundation
import UIKit

struct Playlist {
    
    var title: String?
    var description: String?
    var icon: UIImage?
    var largeIcon: UIImage?
    var artists: [String] = []
    var backgroundColor: UIColor = UIColor.clearColor()
    
    // Since we harcoded the data in our Music Library class, we can
    // pass an index to get the information. We will change this later
    // when we place data in a database.
    init(index: Int) {
        
        let musicLibray = MusicLibrary().library
        let playlistDictionary = musicLibray[index]
        
        title = playlistDictionary["title"] as? String
        
        description = playlistDictionary["description"] as? String
        
        let iconName = playlistDictionary["icon"] as! String
        icon = UIImage(named: iconName)
        
        let largeIconName = playlistDictionary["largeIcon"] as! String
        largeIcon = UIImage(named: largeIconName)
        
        artists += playlistDictionary["artists"] as! [String]
        
        let colorsDictionary = playlistDictionary["backgroundColor"] as! [String:CGFloat]
        backgroundColor = rgbColorFromDictionary(colorsDictionary)
        
        
    }
    
    func rgbColorFromDictionary(colorDictionary: [String:CGFloat]) -> UIColor {
        let red = colorDictionary["red"]!
        let green = colorDictionary["green"]!
        let blue = colorDictionary["blue"]!
        let alpha = colorDictionary["alpha"]!
        
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }
}
