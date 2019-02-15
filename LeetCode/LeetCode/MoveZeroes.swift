//
//  MoveZeroes.swift
//  LeetCode
//
//  Created by 李云鹏 on 2019/2/15.
//  Copyright © 2019 iddev. All rights reserved.
//

import Cocoa

/// 283. Move Zeroes
/// Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

class MoveZeroes {
    
    /// 时间复杂度：O(n)
    /// 空间复杂度：O(n)
    static func moveZeroes(_ nums: [Int]) -> [Int] {
        
        /// 数组中至少有一个元素
        guard nums.count > 1 else {
            return nums
        }
        
        var tempNums = [Int]()
        for num in nums {
            if num != 0 {
                tempNums.append(num)
            }
        }
        for _ in (tempNums.count - 1)..<nums.count {
            tempNums.append(0)
        }
        
        return tempNums
    }
    
    /// 时间复杂度：O(n)
    /// 空间复杂度：O(1)
    static func moveZeroes1(_ nums: inout [Int]) {
        
        /// 数组中至少有一个元素
        guard nums.count > 1 else {
            return
        }
        
        var notZeroIndex = 0
        for num in nums {
            if num != 0 {
                nums[notZeroIndex] = num
                notZeroIndex += 1
            }
        }
        
        /// 将末尾的元素设置为 0
        for index in notZeroIndex..<nums.count {
            nums[index] = 0
        }
    }
    
    /// 时间复杂度：O(n)
    /// 空间复杂度：O(1)
    /// [0,1,0,3,12]
    static func moveZeroes2(_ nums: inout [Int]) {
        
        /// 数组中至少有一个元素
        guard nums.count > 1 else {
            return
        }
        
        var zeroIndex = 0
        for (index, num) in nums.enumerated() {
            
            if num != 0 {
                if zeroIndex != index {
                    nums.swapAt(zeroIndex, index)
                }
                zeroIndex += 1
            }
        }
    }
}
