//
//  ViewController.swift
//  MulticastDelegateDemo
//
//  Created by Joao Nunes on 28/12/15.
//  Copyright © 2015 Joao Nunes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DemoServiceDelegate {

	@IBOutlet weak var topLabel: UILabel!
	@IBOutlet weak var bottomLabel: UILabel!
	
	let dataService = DemoService.defaultService
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
	
		dataService.delegate += self
	}

	@IBAction func getDataTapped(sender: AnyObject) {
		dataService.getData("TestingMulticast")
	}

	
	//MARK: DemoServiceDelegate
	func gotYourData(value:String) {
		topLabel.text = value
	}
	
	
}

