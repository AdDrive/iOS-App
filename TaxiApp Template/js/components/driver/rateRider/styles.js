
'use strict';

import { StyleSheet } from "react-native";
var React = require('react-native');
var { Dimensions } = React;

var deviceHeight = Dimensions.get('window').height;
var deviceWidth = Dimensions.get('window').width;
export default {

  slideSelector: {
    padding: 10,
    backgroundColor: '#eee',
    position: 'absolute',
    bottom: 60,
    width: deviceWidth + 5
  },
  iosHeader: {
    backgroundColor: '#1b557a',
    
  },
  aHeader: {
    backgroundColor: '#1b557a',
    borderColor: '#1b557a',
    elevation: 3,
 
  },
  iosHeaderTitle: {
    fontSize: 18,
    fontWeight: '700',
    color: '#fff',
    textAlign: 'center'
 },
 aHeaderTitle: {
    fontSize: 18,
    fontWeight: '700',
    lineHeight: 26,
    marginTop: -5,
    color: '#fff',
    textAlign: 'center'
 },
  map: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
  },
  footerCard: {
    backgroundColor: '#eee',
    borderWidth:0,
    margin:2
  },
  pay: {
    fontSize: 18,
    fontWeight: '500',
    color: 'green'
  },
  trip: {
    
    fontSize: 13,
    fontWeight: '700',
    lineHeight: 14
  },
  helpBtn: {
    // borderColor: '#797979'
  },

  starIcon: {
    fontSize: 18,
    lineHeight: 20
  },
  modalView: {
    position: 'absolute',
    bottom: 0,
    width: deviceWidth
  },
  rateCard: {
    flexDirection: 'row',
    backgroundColor: '#fff',
    borderRadius: 0,
    borderColor: '#fff',
    margin: 0,
  },
  profileIcon: {
    alignSelf: 'center',
    paddingRight: 10,
  },
  ratings: {
    flexDirection: 'row',
    alignItems: 'center',
    alignSelf: 'center',
    marginVertical: 10
  },
  btnContainer: {
    borderBottomColor: '#eee',
    justifyContent: 'center',
  },
  btnText: {
    color: '#fff',
    fontSize: 20,
    textAlign: 'center',
    fontWeight: '700',
    lineHeight: 25
  },

};
