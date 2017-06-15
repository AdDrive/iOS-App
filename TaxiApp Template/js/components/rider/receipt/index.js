'use strict';

import React, { Component } from 'react';
import { connect } from 'react-redux';
import { View, TouchableOpacity, Dimensions,Platform } from 'react-native';
import { Actions, ActionConst } from 'react-native-router-flux';
import { Container, Header, Content, Text, Button, Icon, Title, Thumbnail, Left, Right, Body  } from 'native-base';

import commonColor from '../../../../native-base-theme/variables/commonColor';
import styles from './styles';


var { width, height } = Dimensions.get('window');

class Receipt extends Component {

    render() {
        return (
                <Container style={{backgroundColor: '#fff'}} >

                    <Header androidStatusBarColor={commonColor.statusBarLight} style={Platform.OS === 'ios' ? styles.iosHeader : styles.aHeader }>
                        <Left><Button transparent   onPress={() => Actions.pop()} >
                            <Icon name='md-arrow-back' style={{fontSize: 28, color:'#1b557a'}} />
                        </Button></Left>
                        <Body><Title style={Platform.OS === 'ios' ? styles.iosHeaderTitle : styles.aHeaderTitle }>YOUR TRIP</Title></Body><Right/>

                    </Header>
                    <Content style={{padding: 20}}>
                        <View style={{alignItems: 'center'}}>
                            <View style={styles.dateContainer}>
                                <View style={styles.sideLines}></View>
                                <Text style={styles.summaryText}>13 March 2017 2:46pm</Text>
                                <View style={styles.sideLines}></View>
                            </View>
                            <Text style={styles.amount}>$12</Text>
                            <View style={styles.dateContainer}>
                                <View style={styles.sideLines}></View>
                                <Text style={styles.summaryText}>TRIP SUMMARY</Text>
                                <View style={styles.sideLines}></View>
                            </View>
                            <View style={{alignItems: 'center'}}>
                                <Thumbnail square small source={require('../../../../images/Contacts/avatar-8.jpg')} style={{borderRadius: 30}} />
                                <Text style={{alignSelf: 'center'}}>Mike Ross</Text>
                                <View style={styles.taxiNoContainer}>
                                    <Text style={styles.taxiNo}>KA09CD007</Text>
                                </View>
                            </View>

                            <View style={{padding: 40}}>
                                <View style={styles.feedBackBtn}>
                                    <TouchableOpacity style={{padding: 20}}>
                                        <Text style={styles.btnText}>LEAVE FEEDBACK</Text>
                                    </TouchableOpacity>
                                    <TouchableOpacity style={{padding: 20}}>
                                        <Text style={styles.btnText}>NEED HELP ?</Text>
                                    </TouchableOpacity>
                                </View>
                                <View style={styles.feedBackBtn}>
                                    <Icon name='ios-star' style={{letterSpacing: 20,color: commonColor.lightThemePlaceholder}} />
                                    <Icon name='ios-star' style={{letterSpacing: 20,color: commonColor.lightThemePlaceholder}} />
                                    <Icon name='ios-star' style={{letterSpacing: 20,color: commonColor.lightThemePlaceholder}} />
                                    <Icon name='ios-star' style={{letterSpacing: 20,color: commonColor.lightThemePlaceholder}} />
                                    <Icon name='ios-star'style={{color: commonColor.lightThemePlaceholder}} />
                                </View>
                            </View>
                        </View>
                    </Content>
                </Container>
        )
    }
}

export default connect()(Receipt);
