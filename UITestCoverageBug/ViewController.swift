//
//  ViewController.swift
//  UITestCoverageBug
//
//  Created by Yu, William on 10/31/16.
//  Copyright © 2016 iwllyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func testedViaUnitTest() {
        print("Reached via unit test")
    }
    
    @IBAction func testAction(_ sender: AnyObject) {
        testedViaUITest()
    }
    
    func testedViaUITest() {
        print("Reached via UI test")
    }
    
}

