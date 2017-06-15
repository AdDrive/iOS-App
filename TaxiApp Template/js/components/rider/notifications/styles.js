
'use strict';

var React = require('react-native');
var { Dimensions } = React;

var deviceHeight = Dimensions.get('window').height;
var deviceWidth = Dimensions.get('window').width;
export default {

  notCard: {
    height: deviceHeight/4,
    width: null,
  },
  iosHeader: {
    backgroundColor: '#fff'
  },
  aHeader: {
    backgroundColor: '#fff',
    borderColor: '#aaa',
    elevation: 3,
    
  },
  iosHeaderText: {
    fontSize: 18,
    fontWeight: '500',
    color:'#1b557a'
  },
  aHeaderText: {
    fontSize: 18,
    fontWeight: '500',
    lineHeight: 26,
    marginTop: -5,
    color: '#1b557a'
  },
  container: {
    backgroundColor: '#1b557a',
    padding: 20,
  },
  contentHeading: {
    textAlign: 'center',
    color: '#fff',
    fontSize: 18,
    fontWeight: '600'
  },
  shareText: {
    textAlign: 'center',
    margin: 40,
    fontWeight: '600',
    flex: 1,
  },

};
