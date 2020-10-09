import UIKit

// Quicksort for Winners

//Recursive Algo

//Recursive algo
func qsrt ( _ arr:[Int]) ->[Int] {
    if arr.count <= 1 {
        return arr
    }
    let pivot = arr[0]
    var finalArray = [Int]()
    var less = [Int]()
    var greater = [Int]()
    
    for num in 1...arr.count - 1 {
        //divide loop
        if arr[num] > pivot {
            //conquer
            greater.append(arr[num])
        }
        if arr[num] <= pivot {
            //conquer
            less.append(arr[num])
        }
    }
    
    //recursion
    finalArray.append(contentsOf:qsrt(less))
    finalArray.append(pivot)
    finalArray.append(contentsOf:qsrt(greater))
    
    return finalArray
}


//Test
print(qsrt([3,110,5,12,44,44,44,44,-2,1,4,7,24567880,8,9,-22334234234,43,5,-89,2,3333,90,34,53,2,3]))


