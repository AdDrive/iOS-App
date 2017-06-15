
var replaceKey = require("replace");
 
replaceKey({
	regex: '#import <React/RCTComponent.h>',
	replacement: '#import <RCTComponent.h>',
	paths: ['./node_modules/react-native-maps/ios/AirMaps/AIRMap.h'],
	recursive: true,
	silent: true,
});

replaceKey({
	regex: '#import "React/RCTView.h"',
	replacement: '#import "RCTView.h"',
	paths: ['./node_modules/react-native-maps/ios/AirMaps/AIRMapCallout.h'],
	recursive: true,
	silent: true,
});

