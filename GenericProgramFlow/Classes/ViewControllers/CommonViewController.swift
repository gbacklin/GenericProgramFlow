//
//  CommonViewController.swift
//  GenericProgramFlow
//
//  Created by Gene Backlin on 1/1/18.
//  Copyright © 2018 Gene Backlin. All rights reserved.
//

import UIKit

class CommonViewController: UIViewController {
    var exitViewController: String?
    var segueName: String?
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        title = text
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func go(_ sender: UIButton) {
        performSegue(withIdentifier: segueName!, sender: self)
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueName! {
            let controller: ExitFlowBaseViewController = segue.destination as! ExitFlowBaseViewController
            controller.text = self.text
        }
    }
    
}
