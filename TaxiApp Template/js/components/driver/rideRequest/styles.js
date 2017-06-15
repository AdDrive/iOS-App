
'use strict';

import { StyleSheet } from "react-native";
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
    width: deviceWidth,
    height: deviceWidth,
    flex: 999999,
  },
  mapBg: {
    height: null,
    width: null,
    top: 0,
    flex: 999,
    position: 'absolute',
    bottom: 0,
    left: 0,
    right: 0,
  },
  pageTouch: {
    backgroundColor: 'transparent',
    position: 'absolute',
    top: 0,
    right: 0,
    left: 0,
    height: deviceHeight,
    width: deviceWidth,
    flex: 999999
  },
  container: {
    backgroundColor: '#0C4169'
  },
  detailsContainer: {
    padding: 30,
    paddingTop: 40,
    alignItems: 'center',
    position: 'absolute',
    top: deviceHeight/2,
    right: 0,
    left: 0
  },
  time: {
    color: '#fff',
    fontWeight: '700',
    fontSize: 20,
    textAlign: 'center',
    padding: 10
  },
  place: {
    color: '#bbb',
    fontWeight: '500',
    fontSize: 16,
    textAlign: 'center',
    padding: 10
  },
  rating: {
    color: '#ccc',
    fontWeight: '500',
    fontSize: 14,
    textAlign: 'center',
    paddingVertical: 10
  },
  iosRateStar: {
    fontSize: 16,
    color: '#ccc',
    alignSelf: 'center'
  },
  aRateStar: {
    fontSize: 16,
    color: '#ccc',
    alignSelf: 'center'
  },
  iosHeader: {
    backgroundColor: '#1b557a',
    borderBottomWidth: null,
  },
  aHeader: {
    backgroundColor: '#1b557a',
    borderColor: '#aaa',
    elevation: 3,
  },
  iosHeaderTitle: {
    fontSize: 22,
    fontWeight: '700',
    color: '#ddd',
    textAlign: 'center'
  },
  aHeaderTitle: {
    fontSize: 22,
    fontWeight: '700',
    lineHeight: 26,
    marginTop: -5,
    textAlign: 'center',
    color: '#ddd'
  },
};
