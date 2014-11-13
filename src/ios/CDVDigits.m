#import "CDVDigits.h"
#import <TwitterKit/TwitterKit.h>
#import <Cordova/CDV.h>

@implementation Digits

- (void)login:(CDVInvokedUrlCommand*)command
{

    [[Digits sharedInstance] authenticateWithCompletion:^
            (DGTSession* session, NSError *error) {
        
    	CDVPluginResult* pluginResult = nil;

        if (session) {
        	pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        } else {
        	pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
        }
    
    	[self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];        
    
    }];


}

@end