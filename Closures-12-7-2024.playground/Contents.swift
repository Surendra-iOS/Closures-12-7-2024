import UIKit

// function
func add(_ lhs: Int, _ rhs: Int) -> Int{
    lhs + rhs
}

add(3,4)


// Closures

let addClosures: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in a + b}

addClosures(44, 3)

func customAdd( _ lhs: Int, _ rhs: Int,
                using fuction: (Int, Int) -> Int
) -> Int{
    fuction(lhs, rhs)
}

customAdd(
    40, 20,
    using: {(lhs: Int, rhs: Int) -> Int in
        lhs + rhs
    }
)

customAdd(
    40, 60)
    {(lhs: Int, rhs: Int) -> Int in
        lhs + rhs
    }

customAdd(
    40, 50
) { (lhs, rhs) in
        lhs + rhs
    }

customAdd(40, 30) { $0 + $1 }


let ages = [30, 40, 44, 23,56, 22]
ages.sorted(by: {(lhs: Int, rhs: Int) -> Bool in
            lhs > rhs})

ages.sorted(by: <)
ages.sorted(by: >)


func customAdd2(
    using function: (Int, Int) -> Int,
_ lhs:Int,
_ rhs: Int
) -> Int {
       function (lhs, rhs)
    }


customAdd2(
    using: { (lhs, rhs) in
        lhs + rhs
    }, 60, 40)


customAdd2(
    using: { $0 + $1 + 10 },
    30, 20)


func add10To( value: Int) -> Int {
    value + 10
}

func add20To( value: Int) -> Int {
    value + 20
}


func doAddition(
    on value: Int,
    using function: (Int) -> Int
) -> Int {
        return function(value)
    }


doAddition(on: 400, using: add10To(value: ))

doAddition(on: 300, using: add20To(value:))
