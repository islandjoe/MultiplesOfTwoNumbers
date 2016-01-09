//
//  ViewController.swift
//  MultiplesOf
//
//  Created by Arthur Kho Caayon on 08/01/16.
//  Copyright © 2016 Intrepid Apps. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

	@IBOutlet weak var multiplesOneOut: NSTextField!
	@IBOutlet weak var multiplesTwoOut: NSTextField!
	
	@IBOutlet weak var denominatorOneOut: NSPopUpButton!
	@IBOutlet weak var denominatorTwoOut: NSPopUpButton!
	
	@IBAction func denominatorOneSelected(sender: NSPopUpButton) {
		if let num = sender.titleOfSelectedItem {
			multiplesOneOut.stringValue = multiplesOf( Int(num)! ).joinWithSeparator(", ")
		}
	}
	
	@IBAction func denominatorTwoSelected(sender: NSPopUpButton)
	{
		if let num = sender.titleOfSelectedItem {
			multiplesTwoOut.stringValue = multiplesOf( Int(num)! ).joinWithSeparator(", ")
		}
	}
	
	func multiplesOf(number: Int) -> [String] {
		
		var multiples = [Int]()
		
		for i in 1...10 {
			multiples.append( i * number )
		}
		
		return multiples.map { String($0) }
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()

		// Do any additional setup after loading the view.
		for denominator in [denominatorOneOut, denominatorTwoOut] {
			denominator.addItemsWithTitles(["","3","4","6","7","8","9"])
		}
	}

	override var representedObject: AnyObject? {
		didSet {
		// Update the view, if already loaded.
		}
	}


}

