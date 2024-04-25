import SwiftUI

struct ContentView: View {
    
    
    @ObservedObject var dieOne: Die = Die(value: 3, numSides: 6)
    @ObservedObject var dieTwo: Die = Die(value: 3, numSides: 6) 
    @State var sum: Int = 0
    @State var wins: Int = 0
    @State var losses: Int = 0 
   
   @State private var showingAlert = false
    @State private var showingAlert2 = false
    
        var body: some View {
            
            
            VStack {
                
                Text("Wins: \(wins)")
                    .font(.system(size: 30))
                    .foregroundColor(.green)
                Text("Losses: \(losses)")
                    .font(.system(size: 30))
                    .foregroundColor(.red)
                
                Text("\(dieOne.value + dieTwo.value)")
                
                Image(systemName: "\(dieOne.value).square.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .imageScale(.large)
                    .foregroundColor(.cyan)
                    
                    
                
                Button("Roll"){
                    
                    print("die rolled")
                    dieOne.roll()
                    dieTwo.roll()
                    sum = dieOne.value + dieTwo.value
                    if sum == 7 || sum == 11 {
                     wins = wins + 1   
                          showingAlert = true 
                   } 
                    if sum == 2 || sum == 3 || sum == 12 {
                        losses = losses + 1
                        showingAlert2 = true
                    }
                
                    
                }
                
                .alert("YOU WIN :) !!!!", isPresented: $showingAlert){
                    
                }
                
                
                .alert("you lost :(", isPresented: $showingAlert2){
                    
                }
                
                Button("Reset Score"){
                    wins = 0 
                    losses = 0
                }
                
                Image(systemName: "\(dieTwo.value).square.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .imageScale(.large)
                    .foregroundColor(.cyan)
                
            }
            
            
            
            
            
            
            
            
        }
  
   }
