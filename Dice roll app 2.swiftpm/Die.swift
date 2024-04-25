import SwiftUI

class Die: ObservableObject {
    
//    @Published var die: [Die] = []
    
   @Published var value: Int = 0
   @Published var numSides: Int = 6 
    
    init() {
        
    }
    init(value: Int, numSides: Int) {
        self.value = Int.random(in: 1...numSides)
        self.numSides = numSides
    }
    
    func roll() {
      self.value = Int.random(in: 1...numSides)
    }
//    func LoadDie() {
//        let nums: [Int] = [1, 2, 3, 4, 5, 6]
//        let image: [String] = ["1.square.fill","2.square.fill", "3.square.fill", "4.square.fill", "5.square.fill", "6.square.fill"]
//    }
//    func Shuffle(){
//        die.shuffle()
//    }
}
