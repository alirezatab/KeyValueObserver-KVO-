//
//  ViewController.swift
//  KeyValueObserver(KVO)
//
//  Created by ALIREZA TABRIZI on 1/3/17.
//  Copyright © 2017 AR-T.com, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet var timeLabel: UILabel!
    
    // MARK: -
    let configurationManager = ConfigurationManager(withConfiguration: Configuration())
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: - Actions
    @IBAction func updateConfiguration(sender: UIButton) {
        configurationManager.updateConfiguration()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

