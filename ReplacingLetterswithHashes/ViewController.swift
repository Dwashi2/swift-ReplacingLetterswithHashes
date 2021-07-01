//
//  ViewController.swift
//  ReplacingLetterswithHashes
//
//  Created by Daniel Washington Ignacio on 01/07/21.
//

/*
 Write a function that replaces all letters within a specified range with the hash symbol #.

 Examples

 replace("abcdef", "c-e") ➞ "ab###f"

 replace("rattle", "r-z") ➞ "#a##le"

 replace("microscopic", "i-i") ➞ "m#croscop#c"

 replace("", "a-z") ➞ ""
 Notes

 The range will always be in order, a.k.a. for m-n, character m will always come before or equal n.
 Strings will be in lower case letters only.
 Return an empty string if the input is an empty string.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.replace("abcdef", "c-e"))
        print(self.replace("rattle", "r-z"))
        print(self.replace("microscopic", "i-i"))
        print(self.replace("", "a-z"))
    }

    func replace(_ str: String, _ r: String) -> String {
        return str.replacingOccurrences(of: "[\(r)]", with: "#", options: [.regularExpression])
    }

}

