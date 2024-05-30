//
//  SettingsController.swift
//  WorkOutApps
//
//  Created by Daniil Zolotarev on 3.05.24.
//

import UIKit

class SettingsController: WABaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = R.Strings.TabBar.title(for: .settings)
    }
}
