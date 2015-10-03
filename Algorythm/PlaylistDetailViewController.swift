//
//  PlaylistDetailViewController.swift
//  Algorythm
//
//  Created by teamtreehouse.com as part of their iOS/Android tutorial
//  modified by Chris Augg on 10/1/15.

import UIKit

class PlaylistDetailViewController: UIViewController {

    @IBOutlet weak var buttonPressLabel: UILabel!
    var segueLabelText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonPressLabel.text = segueLabelText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
