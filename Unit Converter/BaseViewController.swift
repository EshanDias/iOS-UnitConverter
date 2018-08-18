//
//  BaseViewController.swift
//  Unit Converter
//
//  Created by Eshan Dias on 8/12/18.
//  Copyright © 2018 Eshan Dias. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Hiding the KeyBoad when touches outside
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func isMatched(regexPattern pattern: String, stringToCompare value: String) -> Bool{
        var status = false
        
        let regex = try! NSRegularExpression(pattern: pattern, options: [])
        let matches = regex.matches(in: value, options: [], range: NSRange(location: 0, length: value.characters.count))
        
        if matches.count > 0 {
            status = true
        }
        
        return status
    }
}

extension String { subscript(range: ClosedRange<Int>) -> String {
    let lowerIndex = index(startIndex, offsetBy: max(0,range.lowerBound), limitedBy: endIndex) ?? endIndex
    return substring( with: lowerIndex..<(index(lowerIndex, offsetBy: range.upperBound - range.lowerBound + 1,
                                                limitedBy: endIndex) ?? endIndex))
    }
}
