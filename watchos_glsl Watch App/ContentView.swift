//
//  ContentView.swift
//  watchos_glsl Watch App
//
//  Created by Beppe Vanrolleghem on 01/06/2024.
//

import SwiftUI
import SceneKit
struct ContentView: View {
    var gameScene:SCNScene = SCNScene()
    var cameraNode:SCNNode = SCNNode()
    var shader:SCNTechnique = SCNTechnique(dictionary: ["program" : "./test.fsh"])!
    var targetCreationTime:TimeInterval = 0
    
    var body: some View {
        VStack {
            SceneView(scene:gameScene, technique:shader)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
