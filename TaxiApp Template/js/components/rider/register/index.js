'use strict';

import React, { Component } from 'react';
import { connect } from 'react-redux';
import { View, Dimensions,StatusBar,Platform } from 'react-native';
import { Actions, ActionConst } from 'react-native-router-flux';
import { Container, Header, Text, Button, Icon, Item, Input, Title, Left, Right, Body , Content } from 'native-base';
import { Grid, Col, Row } from 'react-native-easy-grid';

import commonColor from '../../../../native-base-theme/variables/commonColor';
import styles from './styles';


var { width, height } = Dimensions.get('window');


class Register extends Component {

    render() {
        return (
                <Container style={{backgroundColor: '#fff'}} >
                    <StatusBar barStyle='default' />
                    <Header androidStatusBarColor={commonColor.statusBarLight} style={Platform.OS === 'ios' ? styles.iosHeader : styles.aHeader }>
                        <Left><Button transparent  onPress={() => Actions.pop()}>
                            <Icon name='md-arrow-back' style={{fontSize: 28,marginLeft: 5,color: '#1b557a'}} />
                        </Button></Left>
                       <Body><Title style={Platform.OS === 'ios' ? styles.iosHeaderTitle : styles.aHeaderTitle}>Register</Title></Body><Right/>
                    </Header>
                    <Content scrollEnabled={true} bounces={false} style={{padding: 10}}>
                        <Grid>
                            <Col style={{padding: 10}}>
                                <Button block style={{borderRadius: 0,backgroundColor: '#DD4B3E'}}>
                                    <Icon name='logo-googleplus' style={{fontSize: 28}} />
                                </Button>
                            </Col>
                            <Col style={{padding: 10}}>
                                <Button block style={{borderRadius: 0,backgroundColor: '#3B579D'}}>
                                    <Icon name='logo-facebook' style={{fontSize: 28}} />
                                </Button>
                            </Col>
                        </Grid>
                        <View style={{padding: 10}}>
                            <Text style={styles.orText}>OR</Text>
                        </View>
                        <Grid>
                            <Col style={{padding: 10 }}>
                                <Item>
                                    <Input placeholder='First Name' placeholderTextColor={commonColor.lightThemePlaceholder}  />
                                </Item>
                            </Col>
                            <Col style={{padding: 10}}>
                                <Item>
                                    <Input placeholder='Last Name' placeholderTextColor={commonColor.lightThemePlaceholder} />
                                </Item>
                            </Col>
                        </Grid>
                        <View style={{padding: 10}}>
                            <Item>
                                <Input placeholder='Email' placeholderTextColor={commonColor.lightThemePlaceholder}  keyboardType='email-address' />
                            </Item>
                        </View>
                        <View style={{padding: 10}}>
                            <Item>
                                <Input placeholder='Mobile Number' placeholderTextColor={commonColor.lightThemePlaceholder}  keyboardType='numeric' />
                            </Item>
                        </View>
                        <View style={{padding: 10}}>
                            <Item>
                                <Input placeholder='Password' secureTextEntry={true} placeholderTextColor={commonColor.lightThemePlaceholder}  />
                            </Item>
                        </View>
                        <View style={styles.regBtnContain}>
                            <Button onPress={() => Actions.home()} block style={styles.regBtn}>
                                <Text style={{color: '#fff',fontWeight: '600'}}>REGISTER</Text>
                            </Button>
                        </View>
                    </Content>
                </Container>
        )
    }
}

export default connect()(Register);
