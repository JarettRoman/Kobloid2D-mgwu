/*
 * Kobold2D™ --- http://www.kobold2d.org
 *
 * Copyright (c) 2010-2011 Steffen Itterheim. 
 * Released under MIT License in Germany (LICENSE-Kobold2D.txt).
 */

#import "HelloWorldLayer.h"
#import "SimpleAudioEngine.h"
CCSprite *ship1;
CCSprite *ship2;

@interface HelloWorldLayer (PrivateMethods)
@end

@implementation HelloWorldLayer

@synthesize helloWorldString, helloWorldFontName;
@synthesize helloWorldFontSize;

-(id) init
{
	if ((self = [super init]))
	{
        //Initialize the ship sprite with a specific file, the ship image!
		ship1 = [CCSprite spriteWithFile: @"ship.png"];
        
        //Set the ship's position.  (0,0) is at the bottom left
        ship1.position = ccp(50, 200);
        
        //Initialize the other sprite
        ship2 = [CCSprite spriteWithFile: @"ship.png"];
        
        //Set the other ship's position
        ship2.position = ccp(100,50);
        
        //Add the ships to the game
        [self addChild:ship1];
        [self addChild:ship2];
	}

	return self;
}

@end
