//
//  ExitFlow1ViewController.swift
//  GenericProgramFlow
//
//  Created by Gene Backlin on 1/1/18.
//  Copyright © 2018 Gene Backlin. All rights reserved.
//

import UIKit

class ExitFlow1ViewController: ExitFlowBaseViewController {
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if text != nil {
            textLabel.text = "Flow 1: \(text!)"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "UnwindToFlow1ViewController" {
            unwindSegueValue = segue.identifier
        }
    }
    
}
