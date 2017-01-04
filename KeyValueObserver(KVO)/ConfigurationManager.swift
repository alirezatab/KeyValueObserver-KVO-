//
//  ConfigurationManager.swift
//  KeyValueObserver(KVO)
//
//  Created by ALIREZA TABRIZI on 1/3/17.
//  Copyright © 2017 AR-T.com, Inc. All rights reserved.
//

import UIKit

class ConfigurationManager: NSObject {
    
    //MARK: - Properties
    var configuration: Configuration
    
    // MARK: -
    lazy private var dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy:MM:dd HH:mm:ss"
        return dateFormatter
    }()
    
     // MARK: -
    var createdAt: String {
        return dateFormatter.string(from: configuration.createdAt)
    }
    
    var updatedAt: String {
        return dateFormatter.string(from: configuration.updateAt)
    }
    
    // MARK: - Initialization
    init(withConfiguration configuration: Configuration) {
        self.configuration = configuration
        
        super.init()
    }
    
    // MARK: - Public Interface
    func updateConfiguration() {
        configuration.updateAt = Date()
    }
}
