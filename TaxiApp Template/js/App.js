'use strict';

import AppNavigator from './AppNavigator';
import React,{Component} from "react";
import { StyleSheet, AppState, Dimensions, Image} from 'react-native';
import {Container, Header, Title, Content, Text, Button, Icon, List, ListItem, View} from 'native-base';


var height = Dimensions.get('window').height;

class App extends Component {

    render() {
        return(
            <AppNavigator store={this.props.store} />
            );
    }
}

export default App
