'use strict';

import commonColor from '../../../../native-base-theme/variables/commonColor';
var React = require('react-native');
var { Dimensions } = React;

var deviceHeight = Dimensions.get('window').height;
var deviceWidth = Dimensions.get('window').width;
export default {
    links: {
        paddingTop: 5,
        paddingBottom: 10,
        paddingLeft: 30,
        borderBottomWidth: 0,
        borderBottomColor: 'transparent',
        
    },
    alinks: {
        paddingTop: 8,
        paddingBottom: 8,
        borderBottomColor: 'transparent'
    },
    iosAboutlink: {
        paddingTop: 10,
        paddingBottom: 10,
        paddingLeft: 20,
        borderBottomWidth: 0,
        borderTopWidth: 1,
        borderTopColor: '#95a5a6',
        borderBottomColor: 'transparent'
    },
    aAboutlink: {
        paddingTop: 8,
        paddingBottom: 8,
        borderBottomColor: 'transparent'
    },
    linkText: {
        paddingLeft: 10,
        color: '#fff',
        fontSize:16
    },
    logoutContainer: {
        padding: 30,
    },
    logoutbtn: {
        paddingTop: 30,
        flexDirection: 'row',
        borderTopWidth: 1,
        borderTopColor: '#797979',
    },
    background: {
        flex: 1,
        width: null,
        height:null,
        backgroundColor: 'rgba(0,0,0,0.1)'
    },
    drawerContent: {
        paddingTop: 30,
        backgroundColor: '#1b557a'
    },
    Bg: {
        backgroundColor: '#1b557a' 
    },
    adrawerContent: {
        paddingTop: 20,
        backgroundColor: '#1b557a'

    },
    aProfilePic: {
        height: 40,
        width: 40, 
        borderRadius: 40,
        marginLeft:15,
        fontSize: 25,
    },
    iosProfilePic: {
        height: 40,
        width: 40, 
        borderRadius: 20,
        marginLeft:5,
        fontSize: 25,
    },
    aSidebarIcons: {
        color: '#fff',
        fontSize: 25,
        opacity: 0.8,
        width:26
    },
    iosSidebarIcons: {
        color: '#fff',
        marginTop:2,
        fontSize: 25,
        opacity: 0.8
    },
    profile: {
        backgroundColor: 'rgba(255,255,255,0.05)',
        paddingTop: 10,
        paddingBottom: 10
    },
};
