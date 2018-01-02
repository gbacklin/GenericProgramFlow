//
//  ExitFlowBaseViewController.swift
//  GenericProgramFlow
//
//  Created by Gene Backlin on 1/1/18.
//  Copyright © 2018 Gene Backlin. All rights reserved.
//

import UIKit

class ExitFlowBaseViewController: UIViewController {
    var text: String?
    var unwindSegueValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        title = text!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
