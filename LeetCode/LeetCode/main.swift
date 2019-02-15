//
//  main.swift
//  LeetCode
//
//  Created by 李云鹏 on 2019/2/12.
//  Copyright © 2019 iddev. All rights reserved.
//

import Foundation

var nums = [4,5]

let length = RemoveElement.removeElement(&nums, 4)

for i in 0..<length {
    print(nums[i])
}
