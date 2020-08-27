//
//  ViewController.swift
//  API Master
//
//  Created by TPFLAP146 on 03/05/20.
//  Copyright © 2020 vijay. All rights reserved.
//

import UIKit

//MARK: - View Controller Initialization
class ViewController: SlidingViewPagerController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }

}

//MARK: - Initial Setup
extension ViewController {
    
    func initialSetup() {
        view.backgroundColor = .white
        
        initialPagerSetup()
        
    }
    func initialPagerSetup() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let testVCOne = storyboard.instantiateViewController(withIdentifier: "SampleViewControllerOne")
        let testVCTwo = storyboard.instantiateViewController(withIdentifier: "SampleViewControllerTwo")

        addItem(item: testVCOne, title: "One")
        addItem(item: testVCTwo, title: "Two")
        setHeaderActiveColor(color: .white)
        setHeaderActiveColor(color: .lightText)
        setHeaderBackgroundColor(color: .orange)
        build()
        
    }
    
}
