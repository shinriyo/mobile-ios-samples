//
//  GPSLocationController.swift
//  AdvancedMap.Swift
//
//  Created by Aare Undo on 28/06/2017.
//  Copyright © 2017 CARTO. All rights reserved.
//

import Foundation
import UIKit

class GPSLocationController : BaseController {
    
    var contentView: GPSLocationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentView = GPSLocationView()
        view = contentView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        contentView.addRecognizers()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        contentView.removeRecognizers()
    }
    
}
