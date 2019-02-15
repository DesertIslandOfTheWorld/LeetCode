//
//  MaxSubArray.swift
//  LeetCode
//
//  Created by 李云鹏 on 2019/2/14.
//  Copyright © 2019 iddev. All rights reserved.
//

import Cocoa

class MaxSubArray {
    
    static func maxSubArray(_ nums: [Int]) -> Int {
        
        assert(nums.count > 0)
        
        guard nums.count > 1 else {
            return nums[0]
        }
        
        var maxSum = Int.min
        var currentSum = 0
        for num in nums {
            currentSum += num
            
            if currentSum < 0 {
                currentSum = 0
            }
            
            if currentSum > maxSum {
                maxSum = currentSum
            }
        }
        
        return maxSum
    }
}
