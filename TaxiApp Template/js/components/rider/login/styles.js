
'use strict';

import { StyleSheet } from "react-native";
var React = require('react-native');
var { Dimensions } = React;

var deviceHeight = Dimensions.get('window').height;
var deviceWidth = Dimensions.get('window').width;
export default {

  iosLogoContainer: {
    top: deviceHeight/2.6,
    alignItems: 'center'
  },
  aLogoContainer: {
    top: deviceHeight/3,
    alignItems: 'center',
    height: deviceHeight/1.5
  },
  logoIcon: {
    color: '#eee',
    fontSize: 100
  },
  logoText: {
    color: '#eee',
    fontWeight: '700',
    fontSize: 25,
    lineHeight: 30,
    marginTop: -10
  },
  loginBtn: {
    borderRadius: 0,
    borderWidth: 2,
    borderColor: '#1b557a',
    alignItems: 'center',
    justifyContent: 'center'
  },
  registerBtn: {
    borderRadius: 0,
    backgroundColor: '#1b557a',
    alignItems: 'center',
    justifyContent: 'center'
  },
};
