'use strict';

import React, { Component } from 'react';
import { connect } from 'react-redux';
import { View, Platform, Dimensions } from 'react-native';
import { Actions } from 'react-native-router-flux';
import { Content, Text, Button, Icon, Left, Right, Body,Thumbnail  } from 'native-base';
import { Grid, Col, Row } from 'react-native-easy-grid';


import styles from './styles';

var { width, height } = Dimensions.get('window');

class Login extends Component {

    render() {
        return (
                <View style={{ flex: 1 }}>
                    <Content style={{backgroundColor: '#1b557a'}}>
                        <View style={Platform.OS === 'ios' ? styles.iosLogoContainer : styles.aLogoContainer }>
                            <Thumbnail style={{width: 180, height: 180, borderRadius: 40}}
                            source={require('../img/AdDrivelogo.png')} />
                        </View>

                    </Content>
                    <View style={{padding: 10, marginBottom: 60 }}>
                        <Grid>
                            <Col style={{padding: 10}}>
                            <Button  onPress={() => Actions.signIn()} transparent block style={styles.loginBtn}><Text style={{ color: '#1b557a',fontWeight: '600' }}>SIGN IN</Text></Button>
                            </Col>
                            <Col style={{padding: 10}}>
                            <Button onPress={() => Actions.register()} block style={styles.registerBtn}><Text style={{fontWeight: '600',color: '#fff'}}>REGISTER</Text></Button>
                            </Col>
                        </Grid>
                    </View>

                </View>
        )
    }
}

export default connect()(Login);
