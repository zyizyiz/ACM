/*
 * @lc app=leetcode.cn id=242 lang=swift
 *
 * [242] 有效的字母异位词
 */

// @lc code=start
class Solution {

    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        var counter = [Int](repeating: 0, count: 26)
        let aCharUnicodeScalar = Int("a".unicodeScalars.first!.value)
        for scalar in s.unicodeScalars {
            counter[Int(scalar.value) - aCharUnicodeScalar] += 1
        }
        for scalar in t.unicodeScalars {
            counter[Int(scalar.value) - aCharUnicodeScalar] -= 1
        }
        guard counter.first(where: { $0 != 0 }) == nil else { return false }
        return true
    }

    func isAnagram1(_ s: String, _ t: String) -> Bool {
        return s.sorted() == t.sorted()
    }
}
// @lc code=end

