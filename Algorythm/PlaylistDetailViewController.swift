//
//  PlaylistDetailViewController.swift
//  Algorythm
//
//  Created by teamtreehouse.com as part of their iOS/Android tutorial
//  modified by Chris Augg on 10/1/15.

import UIKit

class PlaylistDetailViewController: UIViewController {

   
    var playlist: Playlist?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if playlist != nil {
            buttonPressLabel.text = playlist!.title
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
