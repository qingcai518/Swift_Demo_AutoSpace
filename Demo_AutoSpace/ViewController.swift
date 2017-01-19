//
//  ViewController.swift
//  Demo_AutoSpace
//
//  Created by RN-079 on 2017/01/19.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var telTf : UITextField!
    
    var currentLength = 0
    
    @IBAction func edit() {
        guard let text = telTf.text else {return}
        let length = text.characters.count
        
        if (length > currentLength) {
            // when add text.
            if (length == 4 || length == 9) {
                let content = NSMutableString(string: text)
                content.insert(" ", at: length - 1)
                telTf.text = content as String
            }
        } else {
            // when delete text.
            if (length == 4 || length == 9) {
                telTf.text = (text as NSString).substring(to: length - 1)
            }
        }
        
        currentLength = length
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

