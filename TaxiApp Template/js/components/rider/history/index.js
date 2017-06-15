'use strict';

import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Image, View, TouchableOpacity,Platform,Dimensions } from 'react-native';
import { Actions, ActionConst } from 'react-native-router-flux';
import {Container, Header, Content, Text, Button, Icon,Thumbnail, Card, CardItem, Title, Left, Right, Body } from 'native-base';
import MapView from 'react-native-maps';

import commonColor from '../../../../native-base-theme/variables/commonColor';
import styles from './styles';

var { width, height } = Dimensions.get('window');
const ASPECT_RATIO = width / height;
const LATITUDE = 12.920614;
const LONGITUDE = 77.586234;
const LATITUDE_DELTA = 0.0722;
const LONGITUDE_DELTA = 0.0722;
const SPACE = 0.01;


class History extends Component {
    constructor(props) {
        super(props);
        this.state = {
            opacity: 1,
            visible: false,
            a: {
                latitude: LATITUDE ,
                longitude: LONGITUDE,
            }
        };
    }
    componentDidMount() {
        let that = this;
        setTimeout(function () {
            that.setState({
                visible: true
            });
        }, 900);
        setTimeout(function () {
            that.setState({
                opacity : 0
            });
        }, 3050);
    }

    render() {
        return (
                <Container style={{ backgroundColor: '#fff' }} >
                    <Header androidStatusBarColor={commonColor.statusBarLight} style={Platform.OS === 'ios' ? styles.iosHeader : styles.aHeader }>
                        <Left><Button transparent  onPress={() => Actions.pop()} >
                            <Icon name='md-arrow-back' style={{fontSize: 28, color:'#1b557a'}} />
                        </Button></Left>
                        <Body><Title style={Platform.OS === 'ios' ? styles.iosHeaderTitle : styles.aHeaderTitle}>Select a Trip</Title></Body><Right/>

                    </Header>
                    <Content style={{ backgroundColor: '#eee',marginBottom: (Platform.OS === 'ios') ? 0 : -10 }}>
                        <View style={{padding: 15}}>
                            <Card style={{ position:'relative' }}>
                                <CardItem cardBody style={styles.mapContainer}>
                                    {(this.state.visible) ?
                                    (<MapView
                                    ref='map'
                                    style={{ height: height/2 , width: width -30 }}
                                    initialRegion={{
                                    latitude: 15.920614,
                                    longitude: 77.586234,
                                    latitudeDelta: LATITUDE_DELTA,
                                    longitudeDelta: LONGITUDE_DELTA,
                                    }}
                                    scrollEnabled={false}>
                                </MapView>)
                                : <View />
                                }

                                <Image source={require('../../../../images/dummyMap.png')} style={{ resizeMode: 'cover', opacity: this.state.opacity, height: 300, width: null, flex: 1}}/>

                                </CardItem>
                                 <CardItem style={styles.detailContainer}>
                                   <Left><Thumbnail square small source={require('../../../../images/Contacts/avatar-1.jpg')} size={40} style={styles.driverImage} />
                                    <Body><Text style={{marginTop: 5 }}>Monday at 10:30 am</Text>
                                    <Text note style={{marginTop: 5}}>Maruti Suzuki Ritz</Text></Body></Left>

                                    <Right style={{ flex: 0.5, justifyContent: 'center', alignSelf: 'flex-end' }}><Text style={styles.cashText}><Text style={{color: 'green'}}>CASH</Text> $2</Text></Right>
                                </CardItem>
                                <View style={styles.dummyView} />
                            </Card>

                        </View>

                        <View style={{padding: 15,paddingTop: 0}}>
                            <Card style={{position:'relative'}}>
                                <CardItem cardBody style={styles.mapContainer}>
                                    {(this.state.visible) ?
                                    (<MapView
                                    style={{ height: height/2 , width: width -30 }}
                                    initialRegion={{
                                    latitude: 12.920614,
                                    longitude: 77.586234,
                                    latitudeDelta: LATITUDE_DELTA,
                                    longitudeDelta: LONGITUDE_DELTA,
                                    }}
                                    scrollEnabled={false}>
                                </MapView>)
                                : <View />
                                }

                                <Image source={require('../../../../images/dummyMap.png')} style={{ resizeMode: 'cover', opacity: this.state.opacity}}/>

                                </CardItem>
                                 <CardItem style={styles.detailContainer}>
                                    <Left><Thumbnail square small source={require('../../../../images/Contacts/avatar-2.jpg')} size={40} style={styles.driverImage} />
                                    <Body><Text style={{marginTop: 5 }}>12/3/2017 at 10:01 am</Text>
                                    <Text note style={{marginTop: 5}}>Tata Indica</Text></Body></Left>
                                    <Right style={{ flex: 0.5, justifyContent: 'center', alignSelf: 'flex-end' }}><Text style={styles.cashText}><Text style={{color: 'green'}}>CASH</Text> $3</Text></Right>
                                </CardItem>
                                <View style={styles.dummyView} />
                            </Card>

                        </View>

                        <View style={{padding: 15,paddingTop: 0}}>
                            <Card style={{position:'relative'}}>
                                <CardItem cardBody style={styles.mapContainer}>
                                    {(this.state.visible) ?
                                    (<MapView
                                    style={{ height: height/2 , width: width -30 }}
                                    initialRegion={{
                                    latitude: 12.920614,
                                    longitude: 79.586234,
                                    latitudeDelta: LATITUDE_DELTA,
                                    longitudeDelta: LONGITUDE_DELTA,
                                    }}
                                    scrollEnabled={false}>
                                </MapView>)
                                : <View />
                                }

                                <Image source={require('../../../../images/dummyMap.png')} style={{ resizeMode: 'cover', opacity: this.state.opacity}}/>

                                </CardItem>
                                 <CardItem style={styles.detailContainer}>
                                    <Left><Thumbnail square small source={require('../../../../images/Contacts/avatar-3.jpg')} size={40} style={styles.driverImage} />
                                    <Body><Text style={{marginTop: 5 }}>10/3/2017 at 1:43 pm</Text>
                                    <Text note style={{marginTop: 5}}>Maruti Swift Dzire</Text></Body></Left>
                                    <Right style={{ flex: 0.5, justifyContent: 'center', alignSelf: 'flex-end' }}><Text style={styles.cashText}><Text style={{color: 'green'}}>CASH</Text> $7</Text></Right>
                                </CardItem>
                                <View style={styles.dummyView} />
                            </Card>

                        </View>

                        <View style={{padding: 15,paddingTop: 0}}>
                            <Card style={{position:'relative'}}>
                                <CardItem cardBody style={styles.mapContainer}>
                                    {(this.state.visible) ?
                                    (<MapView
                                    style={{ height: height/2 , width: width -30 }}
                                    initialRegion={{
                                    latitude: 52.469397,
                                    longitude: 5.509644,
                                    latitudeDelta: LATITUDE_DELTA,
                                    longitudeDelta: LONGITUDE_DELTA,
                                    }}
                                    scrollEnabled={false}>
                                </MapView>)
                                : <View />
                                }

                                <Image source={require('../../../../images/dummyMap.png')} style={{ resizeMode: 'cover', opacity: this.state.opacity}}/>

                                </CardItem>
                                 <CardItem style={styles.detailContainer}>
                                    <Left><Thumbnail square small source={require('../../../../images/Contacts/avatar-4.jpg')} size={40} style={styles.driverImage} />
                                    <Body><Text style={{marginTop: 5 }}>27/2/2017 at 5:54 pm</Text>
                                    <Text note style={{marginTop: 5}}>Tata Indigo</Text></Body></Left>
                                    <Right style={{ flex: 0.5, justifyContent: 'center', alignSelf: 'flex-end' }}><Text style={styles.cashText}><Text style={{color: 'green'}}>CASH</Text> $1</Text></Right>
                                </CardItem>
                                <View style={styles.dummyView} />
                            </Card>

                        </View>

                        <View style={{padding: 15,paddingTop: 0}}>
                            <Card style={{position:'relative'}}>
                                <CardItem cardBody style={styles.mapContainer}>
                                    {(this.state.visible) ?
                                    (<MapView
                                    style={{ height: height/2 , width: width -30 }}
                                    initialRegion={{
                                    latitude: LATITUDE,
                                    longitude: LONGITUDE,
                                    latitudeDelta: LATITUDE_DELTA,
                                    longitudeDelta: LONGITUDE_DELTA,
                                    }}
                                    scrollEnabled={false}>
                                </MapView>)
                                : <View />
                                }

                                <Image source={require('../../../../images/dummyMap.png')} style={{ resizeMode: 'cover', opacity: this.state.opacity}}/>

                                </CardItem>
                                 <CardItem style={styles.detailContainer}>
                                    <Left><Thumbnail square small source={require('../../../../images/Contacts/avatar-5.jpg')} size={40} style={styles.driverImage} />
                                    <Body><Text style={{marginTop: 5 }}>25/2/2017 at 10:01 pm</Text>
                                    <Text note style={{marginTop: 5}}>i20 </Text></Body></Left>
                                    <Right style={{ flex: 0.5, justifyContent: 'center', alignSelf: 'flex-end' }}><Text style={styles.cashText}><Text style={{color: 'green'}}>CASH</Text> $2</Text></Right>
                                </CardItem>
                                <View style={styles.dummyView} />
                            </Card>

                        </View>
                    </Content>
                </Container>
        )
    }
}

export default connect()(History);
