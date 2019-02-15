//
//  main.swift
//  LeetCode
//
//  Created by 李云鹏 on 2019/2/12.
//  Copyright © 2019 iddev. All rights reserved.
//

import Foundation

var nums = [0,0,1,1,1,2,2,3,3,4]

let length = RemoveDuplicatesfromSortedArray.removeDuplicates(&nums)

for i in 0..<length {
    print(nums[i])
}
