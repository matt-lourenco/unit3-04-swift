//
//  towersOfHanoi.swift
//  This program solves the "Towers of Hanoi" puzzle given the number of disks
//
//  Created by Matthew Lourenco on 30/04/18.
//  Copyright © 2018 MTHS. All rights reserved.
//
// Source:
// Code was adapted from this source
// http://interactivepython.org/runestone/static/pythonds/Recursion/TowerofHanoi.html
//

class towersOfHanoi {
	
	public func solve(height: Int) {
		//Run the moveTower procedure
		moveTower(height: height, fromPole: "A", toPole: "B", sparePole: "C")
	}
	
	private func moveTower(height: Int, fromPole: String, toPole: String, sparePole: String) {
		if height >= 1  {
			moveTower(height: height-1, fromPole: fromPole, toPole: sparePole, sparePole: toPole)
			moveDisk(fp: fromPole, tp: toPole)
			moveTower(height: height-1, fromPole: sparePole, toPole: toPole, sparePole: fromPole)
		}
		
	}
	
	private func moveDisk(fp: String, tp: String) {
		print("moving disk from \(fp) to \(tp)")
	}
}

//Get user input
print("Enter the number of disks")
let input: String? = readLine(strippingNewline: true)
if Int(input!) != nil {
	let height: Int = Int(input!)!
	let towers = towersOfHanoi()
	towers.solve(height: height)
}