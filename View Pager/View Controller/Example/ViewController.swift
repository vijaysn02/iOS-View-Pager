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
    
    override func bindingViewController() {
        super.bindingViewController()
        //Override this
        
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
        
        setHeaderInActiveColor(color: .green)
        setHeaderActiveColor(color: .blue)
        setHeaderBackgroundColor(color: .white)
        
        bindingViewController()
        
    }
    
}
