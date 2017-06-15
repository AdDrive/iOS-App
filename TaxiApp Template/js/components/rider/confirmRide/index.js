'use strict';

import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Image, View, TouchableOpacity, Dimensions,Platform } from 'react-native';
import { Actions, ActionConst } from 'react-native-router-flux';
import { Header, Content, Text, Button, Icon, Card, CardItem, Title, InputGroup, Input, Left, Right, Body, Item  } from 'native-base';
import MapView from 'react-native-maps';

import { openDrawer } from '../../../actions/drawer';
import commonColor from '../../../../native-base-theme/variables/commonColor';
import styles from './styles';


var { width, height } = Dimensions.get('window');
const ASPECT_RATIO = width / height;
const LATITUDE = 12.920614;
const LONGITUDE = 77.586234;
const LATITUDE_DELTA = 0.0722;
const LONGITUDE_DELTA = LATITUDE_DELTA * ASPECT_RATIO;
const SPACE = 0.01;

class ConfirmRide extends Component {

    constructor(props) {
        super(props);
        this.state = {
            a: {
                latitude: LATITUDE ,
                longitude: LONGITUDE,
            },
            b: {
                latitude: 12.910000,
                longitude: 77.586034,
            },
            c: {
                latitude: 12.930000,
                longitude: 77.576034,
            },
            d: {
                latitude: 12.930000,
                longitude: 77.599934,
            }

        };
    }
    componentDidMount() {
        let that = this;
        setTimeout(function () {
            that.setState({
                visible: true,
            });
        }, 500);
        setTimeout(function () {
            that.setState({
                opacity: 0
            });
        }, 900);
    }
    render() {
        return (
                <View style={{flex: 1}}>
                    <Content>
                    </Content>
                        {(this.state.visible) ?
                        (<MapView
                            ref='map'
                            style={styles.map}
                            initialRegion={{
                            latitude: LATITUDE,
                            longitude: LONGITUDE,
                            latitudeDelta: LATITUDE_DELTA,
                            longitudeDelta: LONGITUDE_DELTA,
                            }}>
                            <MapView.Marker coordinate={this.state.b}>
                                <View>
                                    <Icon name='ios-car' style={styles.carIcon} />
                                </View>
                            </MapView.Marker>
                            <MapView.Marker coordinate={this.state.c}>
                                <View>
                                    <Icon name='ios-car' style={styles.carIcon} />
                                </View>
                            </MapView.Marker>
                            <MapView.Marker coordinate={this.state.d}>
                                <View>
                                    <Icon name='ios-car' style={styles.carIcon} />
                                </View>
                            </MapView.Marker>
                            <MapView.Marker coordinate={this.state.a}>
                                <View>
                                    <Icon name='ios-pin' style={{flex: 1 }} />
                                </View>
                            </MapView.Marker>
                        </MapView>)
                        : <View />
                        }
                        <Image source={require('../../../../images/dummyMap.png')} style={{height: height, opacity: this.state.opacity}}/>



                    <View style={styles.slideSelector}>

                        <Card style={{flexDirection: 'row',bottom: 5}}>
                            <CardItem style={styles.selectCardContainer}>
                                <TouchableOpacity style={styles.selectCard}>
                                    <Text style={{justifyContent:'center', alignSelf:'center',fontSize: 13,marginTop: (Platform.OS === 'android') ? -3 : undefined}}>FARE ESTIMATE</Text>
                                </TouchableOpacity>
                            </CardItem>
                            <CardItem style={styles.selectCardContainer}>
                                <TouchableOpacity style={{ ...styles.selectCard, flexDirection: 'row', alignSelf:'center' }} onPress={() => Actions.payment({ type: ActionConst.REPLACE })}>
                                    <Image source={require('../../../../images/paytm2.png')} style={Platform.OS === 'ios' ? styles.iosPaytmIcon : styles.aPaytmIcon} />
                                    <Text style={{alignSelf:'center',fontSize: 13 }}>PAYTM</Text>
                                </TouchableOpacity>
                            </CardItem>
                        </Card>


                        <Button block style={{backgroundColor: '#1b557a'}}  onPress={() => Actions.rideBooked({ type: ActionConst.REPLACE })}>
                            <Text style={{color: '#fff',fontWeight: '700'}}>REQUEST TAXI</Text>
                        </Button>

                        <Text style={styles.footerText}>PICKUP TIME IS APPROXIMATELY 2 MINUTES</Text>
                    </View>


                    <View style={{position: 'absolute',top: 0,width: width+5}}>
                    <Header androidStatusBarColor={commonColor.statusBarLight} style={Platform.OS === 'ios' ? styles.iosHeader : styles.aHeader} >
                        <Left><Button transparent onPress={() => Actions.pop()} >
                            <Icon name='md-arrow-back' style={{fontSize: 28,color: '#1b557a'}} />
                        </Button></Left>
                        <Body><Title style={{color: '#1b557a'}}>Confirmation</Title></Body><Right/>
                    </Header>
                    <View style={Platform.OS === 'ios' ? styles.iosSrcdes : styles.aSrcdes}>

                        <View style={styles.searchBar}>
                            <View style={styles.searchBarIn}>
                                <Icon name='ios-search' style={styles.searchIcon} />
                                <Item regular style={{borderWidth:0}}>
                                    <Input placeholder='Source Required' placeholderTextColor='#797979' value='West Menlo Park, California, 94025, USA' style={{textAlign: 'center', color: 'green', marginLeft: 15, fontSize:15}}/>
                                </Item>
                            </View>
                        </View>

                        <View style={styles.searchBar}>
                            <View style={styles.searchBarIn}>
                                <Icon name='ios-search' style={styles.searchIcon} />
                                <Item regular style={{borderWidth:0}}>
                                    <Input placeholder='Destination Required' placeholderTextColor={commonColor.lightThemePlaceholder} style={{textAlign: 'center'}}/>
                                </Item>
                            </View>
                        </View>

                    </View>
                    </View>



                </View>
        )
    }
}


export default connect()(ConfirmRide);
