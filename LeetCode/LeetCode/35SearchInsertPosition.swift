//
//  35SearchInsertPosition.swift
//  LeetCode
//
//  Created by 李云鹏 on 2019/2/15.
//  Copyright © 2019 iddev. All rights reserved.
//

import Cocoa

/// 35. Search Insert Position
/// Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
/// You may assume no duplicates in the array.
class SearchInsertPosition {
    
    static func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        
        guard nums.count > 0 else {
            return 0
        }
        
        /// 二分查找
        var start = 0
        var end = nums.count - 1
        
        while start < end {
            
            let mid = (end + start) / 2
            
            if nums[mid] == target {
                return mid
            } else if target < nums[mid] {
                end = mid - 1
            } else {
                start = mid + 1
            }
        }
        
        // 未查到指定元素
        if nums[start] < target {
            return start + 1
        } else {
            return start
        }
    }
    
}
