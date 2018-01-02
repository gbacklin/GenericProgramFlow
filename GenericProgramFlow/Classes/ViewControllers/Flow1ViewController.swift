//
//  Flow1ViewController.swift
//  GenericProgramFlow
//
//  Created by Gene Backlin on 1/1/18.
//  Copyright © 2018 Gene Backlin. All rights reserved.
//

import UIKit

class Flow1ViewController: UIViewController {
    
    @IBOutlet weak var statusLabel: UILabel!
    
    let text = "Flow 1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        title = text
        statusLabel.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Flow1Segue" {
            let controller: CommonViewController = segue.destination as! CommonViewController
            controller.segueName = "Flow1ExitSegue"
            controller.text = text
            statusLabel.text = ""
        }
    }
    
    // MARK: - Unwind Segue
    
    @IBAction func UnwindToFlow1ViewController(segue: UIStoryboardSegue) {
        if let sendingSource: ExitFlow1ViewController = segue.source as? ExitFlow1ViewController {
            statusLabel.text = "\(sendingSource.unwindSegueValue!)"
        }
    }
    
}
