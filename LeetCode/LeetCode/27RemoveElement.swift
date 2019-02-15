//
//  27RemoveElement.swift
//  LeetCode
//
//  Created by 李云鹏 on 2019/2/15.
//  Copyright © 2019 iddev. All rights reserved.
//

import Cocoa


/// 27. Remove Element
/// Given an array nums and a value val, remove all instances of that value in-place and return the new length.
/// Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
/// The order of elements can be changed. It doesn't matter what you leave beyond the new length.
class RemoveElement {
    
    static func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        
        guard nums.count > 0 else {
            return 0
        }
        
        var start = 0
        var end = nums.count - 1
        while start <= end {
            
            if nums[start] == val && nums[end] != val {
                nums.swapAt(start, end)
                start += 1
                end -= 1
            } else {
                if nums[start] != val {
                    start += 1
                }
                if nums[end] == val {
                    end -= 1
                }
            }
        }
        
        return end + 1
    }

}
