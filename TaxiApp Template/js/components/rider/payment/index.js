'use strict';

import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Image, View, TouchableOpacity,Dimensions,Platform } from 'react-native';
import { Actions, ActionConst } from 'react-native-router-flux';
import { Container, Header, Text, Button, Icon, Card,Title, Left, Right, Body  } from 'native-base';

import commonColor from '../../../../native-base-theme/variables/commonColor';
import styles from './styles';

var { width, height } = Dimensions.get('window');

class Payment extends Component {

  render() {
      return (
              <Container style={{backgroundColor: '#fff'}} >
                  <Header androidStatusBarColor={commonColor.statusBarLight} style={Platform.OS === 'ios' ? styles.iosHeader : styles.aHeader }>
                      <Left><Button transparent  onPress={() => Actions.pop()} >
                          <Icon name='md-arrow-back' style={{fontSize: 28, color:'#1b557a'}} />
                      </Button></Left>
                     <Body><Title style={Platform.OS === 'ios' ? styles.iosHeaderTitle : styles.aHeaderTitle }>Payment</Title></Body>
                      <Right><Button transparent  onPress={() => Actions.cardPayment()}>
                          <Icon name='ios-card' style={{color: '#1b557a'}} />
                      </Button></Right>
                  </Header>
                  <View>
                      <View style={styles.payModeType}>
                          <Text style={styles.payModeText}>YOUR PAYMENT METHOD</Text>
                      </View>
                      <TouchableOpacity style={styles.payMethod1}>
                          <View style={{borderWidth: 1,borderColor: commonColor.lightThemeColor}}><Image source={require('../../../../images/paytm2.png')} style={styles.paytmIcon} /></View>
                          <Text style={{marginLeft: 20}}>PAYTM WALLET<Text style={{fontSize: 12,color: 'green',textAlign: 'center'}}> $0</Text></Text>

                      </TouchableOpacity>
                      <TouchableOpacity style={styles.payMethod2}>
                          <Icon name='ios-cash' style={{fontSize: 40}} />
                          <Text style={{marginLeft: 20,marginTop: 8}}>CASH</Text>
                      </TouchableOpacity>
                  </View>
              </Container>
      )
  }
}

export default connect()(Payment);
