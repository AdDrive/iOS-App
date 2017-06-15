'use strict';

import React, { Component } from 'react';
import { connect } from 'react-redux';
import { View,StatusBar,Platform } from 'react-native';
import { Actions, ActionConst } from 'react-native-router-flux';
import { Container, Header, Text, Button, Icon, Item, Input,Title , Left, Right, Body, Content } from 'native-base';
import { Grid, Col, Row } from 'react-native-easy-grid';

import styles from './styles';
import commonColor from '../../../../native-base-theme/variables/commonColor';

class SignIn extends Component {

    render() {
        return (
                <Container  style={{backgroundColor: '#fff'}} >
                    <Header androidStatusBarColor={commonColor.statusBarLight} style={Platform.OS === 'ios' ? styles.iosHeader : styles.aHeader } >
                        <Left><Button transparent  onPress={() => Actions.pop()} >
                            <Icon name="md-arrow-back" style={{fontSize: 28,marginLeft: 5, color: '#1b557a'}} />
                        </Button></Left>
                       <Body><Title style={Platform.OS === 'ios' ? styles.iosHeaderTitle : styles.aHeaderTitle}>Sign In</Title></Body><Right/>
                    </Header>
                    <Content style={{padding: 10}} scrollEnabled={true} bounces={false}>
                        <Grid>
                            <Col style={{padding: 10}}>
                                <Button block style={{borderRadius: 0,backgroundColor: '#DD4B3E'}}>
                                    <Icon name="logo-googleplus" style={{fontSize: 28}} />
                                </Button>
                            </Col>
                            <Col style={{padding: 10}}>
                                <Button block style={{borderRadius: 0,backgroundColor: '#3B579D'}}>
                                    <Icon name="logo-facebook" style={{fontSize: 28}} />
                                </Button>
                            </Col>

                        </Grid>
                            <View style={{padding: 10 ,marginTop: 20}}>
                            <Text style={styles.orText}>OR</Text>
                            </View>

                        <View style={{padding: 10}}>
                            <Item>
                                <Input placeholder="Phone number or email" placeholderTextColor={commonColor.lightThemePlaceholder} />
                            </Item>
                        </View>
                        <View style={{padding: 10}}>
                            <Item>
                                <Input placeholder="Password" secureTextEntry={true} placeholderTextColor={commonColor.lightThemePlaceholder} />
                            </Item>
                        </View>
                        <View style={styles.regBtnContain}>
                            <Button onPress={() => Actions.home()} block style={styles.regBtn}>
                                <Text style={{color: '#fff',fontWeight: '600'}}>SIGN IN</Text>
                            </Button>
                        </View>
                    </Content>
                </Container>
        )
    }
}

export default connect()(SignIn);
