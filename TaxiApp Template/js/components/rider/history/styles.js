'use strict';
var React = require('react-native');
var { Dimensions } = React;

var deviceHeight = Dimensions.get('window').height;
var deviceWidth = Dimensions.get('window').width;
export default {

  map: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
  },
  iosHeader: {
    backgroundColor: '#fff',
  },
  aHeader: {
    backgroundColor: '#fff',
    borderColor: '#aaa',
    elevation: 3,
    
  },
  iosHeaderTitle: {
    fontSize: 18,
    fontWeight: '500',
    color:'#1b557a'
 },
 aHeaderTitle: {
    fontSize: 18,
    fontWeight: '500',
    lineHeight: 26,
    marginTop: -5,
    color: '#1b557a'
 },
 mapContainer: {
    borderWidth: 0,
    padding: 0,
    height: deviceHeight/6,
    overflow: 'hidden'
 },

  detailContainer: {
    borderWidth: 0,
    padding: 10
  },
  driverImage: {
    borderRadius: 20,
    marginTop: 3
  },
  cashText: {
    alignSelf: 'flex-end',
    marginTop: -40
  },
  dummyView: {
    position:'absolute',
    top: 0,
    bottom:0,
    left: 0,
    right:0,
    backgroundColor: 'transparent'
  },

};
