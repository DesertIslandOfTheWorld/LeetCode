//
//  _1TowSum.swift
//  LeetCode
//
//  Created by 李云鹏 on 2019/2/15.
//  Copyright © 2019 iddev. All rights reserved.
//

import Cocoa

/// 1. Two Sum
/// Given an array of integers, return indices of the two numbers such that they add up to a specific target.
/// You may assume that each input would have exactly one solution, and you may not use the same element twice.

class _1TowSum {
    
    static func twoSum(_ nums: [Int], target: Int) -> [Int] {
        
        var numDictionary = [Int : Int]()
        
        for (index, num) in nums.enumerated() {
            
            if let anotherIndex = numDictionary[target - num] {
                return [index, anotherIndex]
            }
            
            numDictionary[num] = index
        }
        
        return []
    }
}
