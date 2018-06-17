//
//  ThirdViewController.swift
//  ARC
//
//  Created by Mac on 17/06/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

protocol ThirdViewControllerDelegate {
    func thirdViewController(_ viewController: ThirdViewController, uiBUtton: UIButton)
}



class ThirdViewController: UIViewController {
    
    var delegate: ThirdViewControllerDelegate?
    @IBAction func backButtonClick(_ sender: UIButton) {
        
        
        delegate?.thirdViewController(self, uiBUtton: sender)
        navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
