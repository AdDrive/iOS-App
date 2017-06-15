
'use strict';

import { StyleSheet } from "react-native";
var React = require('react-native');
var { Dimensions } = React;

var deviceHeight = Dimensions.get('window').height;
var deviceWidth = Dimensions.get('window').width;
export default {


  iosHeader: {
    backgroundColor: '#fff',
  },
  aHeader: {
    backgroundColor: '#fff',
    borderColor: '#aaa',
    elevation: 3
  },
  iosHeaderTitle: {
    fontSize: 18,
    fontWeight: '500',
    color: '#1b557a'
 },
 aHeaderTitle: {
    fontSize: 18,
    fontWeight: '500',
    lineHeight: 26,
    marginTop: -5,
    color: '#1b557a'
 },
 orText: {
    textAlign: 'center',
    fontWeight: '700'
 },
 regBtnContain: {
    paddingVertical: 20,
    paddingHorizontal: 10
 },
 regBtn: {
    borderRadius: 0,
    backgroundColor: '#1b557a'
 },


};
