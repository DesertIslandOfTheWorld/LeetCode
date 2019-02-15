//
//  26RemoveDuplicatesfromSortedArray.swift
//  LeetCode
//
//  Created by 李云鹏 on 2019/2/15.
//  Copyright © 2019 iddev. All rights reserved.
//

import Cocoa

/// 26. Remove Duplicates from Sorted Array
/// Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length.
/// Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

class RemoveDuplicatesfromSortedArray {

    static func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        guard nums.count > 1 else {
            return nums.count
        }
        
        var noRepeatIndex = 0
        
        for index in 1..<nums.count {
            if nums[index] != nums[noRepeatIndex] {
                noRepeatIndex += 1
                nums.swapAt(index, noRepeatIndex)
            }
        }
        
        return noRepeatIndex + 1
    }
}
