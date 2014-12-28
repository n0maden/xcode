//
//  GameScene.swift
//  buildit
//
//  Created by Tobias Fredriksson on 2014-12-28.
//  Copyright (c) 2014 Tobias Fredriksson. All rights reserved.
//

import SpriteKit
var _prevTime:CFTimeInterval = 0
var _timeCounter:CFTimeInterval = 0
var _isPlaying = false
var _buildItem01:SKSpriteNode = SKSpriteNode(imageNamed:"Apartment-Condo")
var _buildItem02:SKSpriteNode = SKSpriteNode(imageNamed:"Apartment-Rental")
var _buildItem03:SKSpriteNode = SKSpriteNode(imageNamed:"Office-40x20")
var _buildItem04:SKSpriteNode = SKSpriteNode(imageNamed:"Office-80x20")
var _buildItem05:SKSpriteNode = SKSpriteNode(imageNamed:"Hotel-Frontdesk")
var _buildItem06:SKSpriteNode = SKSpriteNode(imageNamed:"Hotel-Singel")
var _buildItem07:SKSpriteNode = SKSpriteNode(imageNamed:"Hotel-Double Room")
var _buildItem08:SKSpriteNode = SKSpriteNode(imageNamed:"Hotel-Small Suit")
var _buildItem09:SKSpriteNode = SKSpriteNode(imageNamed:"Hotel-Large Suit")
var _buildItem10:SKSpriteNode = SKSpriteNode(imageNamed:"Shop-Dispenser")
var _buildItem11:SKSpriteNode = SKSpriteNode(imageNamed:"Shop-40x20")


class GameScene: SKScene {
    var buildMenu: SKNode! = nil
    let myLabel = SKLabelNode(fontNamed:"Chalkduster")
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        myLabel.text = "Build"
        myLabel.fontSize = 24
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        self.addChild(myLabel)
        
        buildMenu = SKSpriteNode(color: SKColor.greenColor(), size: CGSize(width: 80, height: 24))
        buildMenu.position = CGPoint(x:CGRectGetMidX(self.frame)-200, y:CGRectGetHeight(self.frame)-20);
        self.addChild(buildMenu)
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        /*
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"Apartment-Condo")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
        }
        */
        
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            if myLabel.containsPoint(location) {
                _isPlaying = false
                ShowBuildMenu()
            } else if (buildMenu.containsPoint(location)) {
                _isPlaying = false
                ShowBuildMenu()
            }
        }
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        if _prevTime == 0 {
            _prevTime = currentTime
        }
        if _isPlaying
        {
            _timeCounter += currentTime - _prevTime
            if _timeCounter > 0.5 {
                _timeCounter = 0
                timeStep()
            }
        }
        _prevTime = currentTime
    }
}

func timeStep () {
    
}

func ShowBuildMenu() {
    _buildItem01.position = CGPoint(x: 40, y: 200)
    _buildItem02.position = CGPoint(x: 40, y: 300)
    _buildItem03.position = CGPoint(x: 80, y: 200)
    _buildItem04.position = CGPoint(x: 80, y: 300)
    _buildItem05.position = CGPoint(x: 120, y: 200)
    _buildItem06.position = CGPoint(x: 120, y: 300)
    _buildItem07.position = CGPoint(x: 120, y: 380)
    _buildItem08.position = CGPoint(x: 120, y: 460)
    _buildItem09.position = CGPoint(x: 120, y: 540)
    _buildItem10.position = CGPoint(x: 160, y: 200)
    _buildItem11.position = CGPoint(x: 160, y: 300)
//    _buildItem05.position = CGPoint(x: 120, y: 200)
    
}