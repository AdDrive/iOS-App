'use strict';

import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Image, View, TouchableOpacity,Dimensions,Platform } from 'react-native';
import { Actions, ActionConst } from 'react-native-router-flux';
import { Container, Header, Text, Button, Icon, Card, Title, Left, Right, Body  } from 'native-base';

import commonColor from '../../../../native-base-theme/variables/commonColor';
import styles from './styles';

var { width, height } = Dimensions.get('window');

class cardPayment extends Component {

    render() {
        return (
                <Container style={{backgroundColor: '#fff'}} >

                    <Header androidStatusBarColor={commonColor.statusBarLight} style={Platform.OS === 'ios' ? styles.iosHeader : styles.aHeader}>
                        <Left><Button transparent  onPress={() => Actions.pop()} >
                            <Icon name='md-arrow-back' style={{fontSize: 28,color: '#1b557a'}} />
                        </Button></Left>
                        <Body><Title style={Platform.OS === 'ios' ? styles.iosHeaderTitle : styles.aHeaderTitle}>Payment</Title></Body><Right/>
                    </Header>
                    <View>
                        <View style={styles.cardSelect}>
                            <Text style={{fontSize: 14,fontWeight: '600'}}>SELECT HOW YOU WOULD LIKE TO PAY</Text>
                        </View>
                        <TouchableOpacity style={styles.payCard} onPress={() => Actions.creditCard()} >
                            <Icon name='ios-card' style={{fontSize: 40}} />
                            <Text style={{marginLeft: 20,marginTop: 8}}>Credit/Debit Card</Text>
                        </TouchableOpacity>
                        <TouchableOpacity style={{ ...styles.payCard, marginTop: 15,paddingBottom: 10 }}>
                            <View style={{borderWidth: 1,borderColor: commonColor.lightThemeColor}}><Image source={require('../../../../images/paytm2.png')} style={styles.paytmIcon} /></View>
                            <Text style={{marginLeft: 20}}>Paytm Money</Text>
                        </TouchableOpacity>

                    </View>
                </Container>
        )
    }
}

export default connect()(cardPayment);
