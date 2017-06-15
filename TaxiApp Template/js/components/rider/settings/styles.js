'use strict';
import commonColor from '../../../../native-base-theme/variables/commonColor';
import { StyleSheet } from "react-native";
var React = require('react-native');
var { Dimensions } = React;

var deviceHeight = Dimensions.get('window').height;
var deviceWidth = Dimensions.get('window').width;
export default {


  iosHeader: {
    backgroundColor: '#fff'
  },
  aHeader: {
    backgroundColor: '#fff',
    borderColor: '#aaa',
    elevation: 3
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
    color:'#1b557a'
  },
  profileIcon: {
    alignSelf: 'center',
    padding: 10,
    fontSize: 50
  },
  inputContainer: {
    borderWidth: null,
    paddingBottom: 0,
    paddingTop: 0,
    margin: null,
  },
  input: {
    paddingBottom: 0,
    flex: 2,
  },
  blueBorder: {
    borderBottomWidth: 1,
    borderBottomColor:commonColor.lightThemePlaceholder ,
    paddingBottom: 0,
    marginHorizontal:10
    
  },
  blueHeader:{
    padding: 5,
    marginLeft: -10,
    color: commonColor.lightThemePlaceholder,

  },

};
