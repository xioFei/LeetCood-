//
//  main.swift
//  LeetCode
//
//  Created by 王孝飞 on 2019/2/15.
//  Copyright © 2019 王孝飞. All rights reserved.
//

import Foundation

/*1.
 给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。
 
 你可以假设每种输入只会对应一个答案。但是，你不能重复利用这个数组中同样的元素。
 
 示例:
 
 给定 nums = [2, 7, 11, 15], target = 9
 
 因为 nums[0] + nums[1] = 2 + 7 = 9
 所以返回 [0, 1]
 
 //最佳实例 16ms
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for index in 0 ..< nums.count {
            if let lastIndex = dict[target - nums[index]] {
                return [lastIndex, index]
            } else {
                dict[nums[index]] = index
            }
        }
        return []
    }
}
 */

class Solution {//56ms
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var dict = [Int:Int]()
        for (i,item)  in nums.enumerated() {
            let targetNum = target - item
            if dict[targetNum] != nil{
                return [dict[targetNum]!,i]
            }else{
                dict[item] = i
            }
        }
        return []
    }
}
