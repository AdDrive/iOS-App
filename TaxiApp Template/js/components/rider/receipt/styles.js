
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
    color:'#1b557a'
 },
 dateContainer: {
    paddingVertical: 20,
    flexDirection: 'row'
 },
 sideLines: {
    borderBottomWidth: 1,
    width: 50,
    alignSelf: 'center',
    borderBottomColor: '#797979'
 },
 summaryText: {
    textAlign: 'center',
    padding: 5,
    paddingTop: 0,
    
 },
 amount: {
    fontSize: 80,
    lineHeight: 80,
    padding: 20,
    paddingVertical: 30
 },
 taxiNoContainer: {
    borderWidth: 1,
    backgroundColor: '#1b557a'
 },
 taxiNo: {
    textAlign: 'center',
    fontSize: 12,
    lineHeight: 13, 
    color: '#fff',
    padding: 5,
    fontWeight: '700' 
 },
 feedBackBtn: {
    flexDirection: 'row',
    alignSelf: 'center'
 },
 btnText: {
    fontSize: 14
 },
};