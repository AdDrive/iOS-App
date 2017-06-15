
'use strict';

import { StyleSheet,Platform } from "react-native";
var React = require('react-native');
var { Dimensions } = React;

var deviceHeight = Dimensions.get('window').height;
var deviceWidth = Dimensions.get('window').width;
export default {
    searchBar: {
        width: deviceWidth - 20,
        alignSelf: 'center',
        backgroundColor: '#eee',
        borderColor:'#ddd',
        borderWidth:1
    },
    searchBarIn: {
    },
    aSrcdes: {
        margin: 10,
        flex: 1,
    },
    iosSrcdes: {
        margin: 10,
        flex: 1,
    },

  slideSelector: {
    padding: 10,
    backgroundColor: '#eee',
    position: 'absolute',
    bottom: 0,
    width: deviceWidth + 5,
  },

  map: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
  },
  iosPaytmIcon: {
    width: 35,
    height: 13,
    marginTop: 0,
    paddingVertical:8,
    marginHorizontal: 10,
    justifyContent: 'center'
  },
  aPaytmIcon: {
    width: 35,
    height: 13,
    marginTop: (Platform.OS === 'android') ? 2 : -3,
    paddingVertical:8,
    marginHorizontal: 10,
    justifyContent: 'center'
  },
  carIcon: {
    fontSize: 24
  },
  selectCardContainer: {
    alignItems: 'center',
    padding: null,
    borderWidth: 0.5,
    flex: 2,
    margin: -2,
    alignSelf: 'center',
    justifyContent: 'center', 
    borderColor: '#ddd',
  },
  selectCard: {
    alignItems: 'center',
    paddingVertical: null,
  },
  footerText: {
    textAlign: 'center',
    fontSize: 10,
    lineHeight: 15,
    marginBottom: -7,
   
  },
  iosHeader: {
    backgroundColor: '#fff',
  },
  aHeader: {
    backgroundColor: '#fff',
    borderColor: '#aaa',
    elevation: 3
  },
  searchIcon: {
    fontSize: 20,
    backgroundColor: 'transparent',
    marginTop: 10,
    position: 'absolute',
    left: 10,
    top: 7
  },
} ;
