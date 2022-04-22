
import SwiftUI
import UIKit
import CoreHaptics
//struct SecondView: View {
  //  var body: some View {
    //    Text("Second View")
//    }
//}
struct ContentView: View {
    @State private var showingSheet = false
    @State private var engine: CHHapticEngine?
    let colors: [Color] = [.black, .gray, .red, .orange, .yellow,
                           .green, .blue, .purple, .pink, .white,.cyan, .brown, .teal]
    @State private var fgColor: Color = .white
  
    var body: some View {

//
        Image(systemName: "heart.fill")
            .resizable()
            .frame(width: 1200, height: 2000)
            .foregroundColor(fgColor)
            .onTapGesture(count: 1, perform: lightButtonTapped)
            .onTapGesture(count: 2, perform: mediumButtonTapped)
            .onTapGesture(count: 3, perform: heavyButtonTapped )
            .onLongPressGesture(minimumDuration: 0.1) {
                fgColor = colors.randomElement()!
                let generator = UINotificationFeedbackGenerator()
                generator.notificationOccurred(.success)
            }
           // .onTapGesture(count: 1, perform: errorButtonTapped)
            
                
            
            

    
    }

   

    func gestureFired(gesture: UITapGestureRecognizer){
            
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.prepare()
        generator.impactOccurred()
            }
}
    


func errorButtonTapped() {
            let generator = UINotificationFeedbackGenerator()
            generator.notificationOccurred(.error)
        }

func successButtonTapped() {
            let generator = UINotificationFeedbackGenerator()
            generator.notificationOccurred(.success)
        }

func warningButtonTapped() {
            let generator = UINotificationFeedbackGenerator()
            generator.notificationOccurred(.warning)
        }
        
func lightButtonTapped() {
            let generator = UIImpactFeedbackGenerator(style: .light)
            generator.prepare()
            generator.impactOccurred()
        }
func mediumButtonTapped() {
            let generator = UIImpactFeedbackGenerator(style: .medium)
            generator.prepare()
            generator.impactOccurred()
        }
        
func heavyButtonTapped() {
            let generator = UIImpactFeedbackGenerator(style: .heavy)
            generator.prepare()
            generator.impactOccurred()
        }
        
func selectionButtonTapped(_ sender: UITapGestureRecognizer) {
            let generator = UISelectionFeedbackGenerator()
            generator.selectionChanged()
        }
    






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
