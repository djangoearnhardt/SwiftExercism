//: [Previous](@previous)

import Foundation

struct ListOps {
    
    static func append<T>(_ array: [T]...) -> [T] {
        //[T]... elipsis are variadic parameters, so you can run a foreach closure to add the results to the first element in the input array
        var appended = [T]()
        //goes through elements in array, and adds them one by one to an empty array called appended
        array.forEach { appended = appended + $0 }
        return appended
    }
    
    static func concat<T>(_ arrays: [T]...) -> [T] {
        var concatinated = [T]()
        arrays.forEach { array in
            concatinated = append(concatinated, array) }
        return concatinated
    }
    
    static func filter<T>(_ array: [T], toBeFiltered: (T) -> Bool) -> [T] {
        //(T) -> Bool is a Generic Where Clause, lets you add a requirement to T, Says to do the method only when toBeFiltered is Equatable
        var filtered = [T]()
        //if toBeFiltered == array[$0] then append to filtered array
        array.forEach { if toBeFiltered($0) { filtered.append($0) }}
        return filtered
    }
    
    static func length<T>(_ array: [T]) -> Int {
        var count = 0
        array.forEach { _ in
            count += 1
        }
        return count
    }
    
    static func map<T>(_ array: [T], _ task: (T) -> T) -> [T] {
        var mapped = [T]()
        array.forEach { item in
            //append mapped item to mapped array
            mapped.append(task(item))
            //            array.forEach { mapped.append(task($0)) } One liner
        }
        return mapped
    }
    
    static func foldLeft<T>(_ array: [T], accumulated: T, combine: (T, T) -> T) -> T {
        guard array.count > 0 else { return accumulated }
        return foldLeft(Array(array.dropFirst()), accumulated: combine(accumulated, array[0]), combine: combine)
    }
    
    static func foldRight<T>(_ array: [T], accumulated: T, combine: (T, T) -> T) -> T {
        guard array.count > 0 else { return accumulated }
        return foldRight(Array(array.dropLast()), accumulated: combine(array[array.count - 1], accumulated), combine: combine)
    }
    
    static func reverse<T>(_ array: [T]) -> [T] {
        var reversed = [T]()
        var index = length(array)
        while index >= 0 {
            reversed.append(array[index])
            index -= 1
        }
        return reversed
    }
}

//: [Next](@next)
