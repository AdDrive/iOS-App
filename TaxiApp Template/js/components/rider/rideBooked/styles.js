
'use strict';
import commonColor from '../../../../native-base-theme/variables/commonColor';
var React = require('react-native');
var { Dimensions } = React;

var deviceHeight = Dimensions.get('window').height;
var deviceWidth = Dimensions.get('window').width;
export default {
    searchBar: {
        width: deviceWidth,
        alignSelf: 'center',
        height: 50,
        borderRadius: 0,
        alignItems: 'center',
        justifyContent: 'center'
    },
    srcdes: {
        flex: 1,
        top:-8,
        width:deviceWidth + 5,
        
    },

  slideSelector: {
    paddingBottom: 10,
    backgroundColor: '#fff',
    position: 'absolute',
    bottom: 0,
    width: deviceWidth +5 ,
    paddingHorizontal:0
  },

  map: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
  },
  driverInfoContainer: {
    alignItems: 'center',
    justifyContent: 'center',
    alignSelf: 'center',
  },
  driverInfo: {
    flexDirection: 'row',
    alignSelf: 'center',
    borderWidth: 1,
    flex: 1,
    padding: 3,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#eee',
    marginTop: -10,
    borderColor: commonColor.lightThemeColor, 
  },
  carInfo: {
    borderWidth: 1,
    padding: 3,
    backgroundColor: '#eee',
    marginTop: -10,
    borderColor: commonColor.lightThemeColor,
  },
  card: {
    alignItems: 'center',
    borderWidth: 1,
    flex: 2,
    borderColor: '#EEE',
    paddingVertical:6,
    paddingHorizontal:8,
    justifyContent: 'center'
  },
  btnText: {
    fontSize: 13,
    lineHeight: 15,
  },
  waitTime: {
    textAlign: 'center',
    fontSize: 10,
    lineHeight: 15,
    marginTop: 10
  },
  headerContainer: {
    position: 'absolute',
    top: 0,
    width: deviceWidth +5,
  },
  iosHeader: {
    backgroundColor: '#fff'
  },
  aHeader: {
    backgroundColor: '#fff',
    borderColor: '#aaa',
    elevation: 3,
  },
  confirmation: {
    textAlign: 'center',
    marginTop: -3,
    fontSize: 14
  },

};
