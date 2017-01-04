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
        
        addObserver(self, forKeyPath: #keyPath(configurationManager.configuration.updateAt), options: [.old, .new, .initial], context: nil)
    }
    
    // MARK: - Actions
    @IBAction func updateConfiguration(sender: UIButton) {
        configurationManager.updateConfiguration()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == #keyPath(configurationManager.configuration.updateAt) {
            timeLabel.text = configurationManager.updatedAt
        }
    }
    
    // MARK: - Deinitialization
    deinit {
        removeObserver(self, forKeyPath: #keyPath(configurationManager.configuration.updateAt))
    }
}

