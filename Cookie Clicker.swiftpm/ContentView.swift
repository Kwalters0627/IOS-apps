import SwiftUI
struct ContentView: View {
    
    let appName: String = "The Bears and The Bees"
    @State var doubleApply = false 
    @State var multiplier = 1
    @State var phrase: String = ""
    @State var backgroundColor : Color =
    Color.white
    
    
    @State var count: Int = 0 
    
    var body: some View {
        NavigationStack {
            VStack{
                 Text("\(count)")
                    .font(.largeTitle)
               HStack{
                   Spacer()
                   if count > 20 && doubleApply == true {
                       Button("Double"){
                           multiplier = multiplier * 2 
                           doubleApply = false 
                       }
                   }
                   
               }
               .padding()
                Button("🍯") {
                   
                        
                    phrase = phrase + "🐝" 
                        print(1)
                        count = count + multiplier 
                   }
                        
                   
                .font(.system(size: 100))
                .foregroundColor(.white)
                .padding()
                
                    .navigationTitle(appName)
                   
            } 
            VStack {
                Text(" 🐻\(phrase)")
                    .font(.system(size: 20))
            }
            .toolbar(content: {
                Button("Reset score"){
                    count = 0 
                    phrase = ""
                }
            })
                
            Spacer()
                
            VStack{ 

            }
            
              
        }
            
           

            
             
            
        
    }
}
