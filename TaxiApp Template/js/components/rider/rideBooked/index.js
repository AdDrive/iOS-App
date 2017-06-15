'use strict';

import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Image, View, TouchableOpacity, Dimensions,Platform } from 'react-native';
import { Actions, ActionConst } from 'react-native-router-flux';
import { Header, Content, Text, Button, Icon, Card, CardItem, Title, Thumbnail, Left, Right, Body } from 'native-base';
import { Grid, Col, Row } from 'react-native-easy-grid';
import MapView from 'react-native-maps';

import commonColor from '../../../../native-base-theme/variables/commonColor';
import styles from './styles';

var { width, height } = Dimensions.get('window');
const ASPECT_RATIO = width / height;
const LATITUDE = 12.920614;
const LONGITUDE = 77.586234;
const LATITUDE_DELTA = 0.0722;
const LONGITUDE_DELTA = LATITUDE_DELTA * ASPECT_RATIO;
const SPACE = 0.01;


class RideBooked extends Component {

    constructor(props) {
        super(props);
        this.state = {
            a: {
                latitude: LATITUDE ,
                longitude: LONGITUDE,
            },
            b: {
                latitude: 12.914000,
                longitude: 77.586034,
            },
            visible: false,
            opacity: undefined,

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
                            }}
                            scrollEnabled={false}>
                            <MapView.Marker coordinate={this.state.b}>
                                <View>
                                    <Icon name='ios-car' style={{fontSize: 24}} />
                                </View>
                            </MapView.Marker>
                            <MapView.Marker coordinate={this.state.a}>
                                <View>
                                    <Icon name='ios-pin' />
                                </View>
                            </MapView.Marker>
                        </MapView>)
                        : <View />
                        }
                        <Image source={require('../../../../images/dummyMap.png')} style={{height: height, opacity: this.state.opacity}}/>





                    <View style={styles.slideSelector}>
                    <Card style={{borderWidth:0, elevation: 0}}>
                    <CardItem>
                        <Grid style={{flexDirection: 'row',borderWidth:0}}>
                            <Col style={styles.driverInfoContainer}>
                                <Thumbnail square size={60} source={require('../../../../images/Contacts/avatar-9.jpg')} style={{borderRadius: 30}} />
                                <View style={styles.driverInfo}>
                                    <Text style={{fontSize: 12,lineHeight: 13, textAlign: 'center', left: 10}}>4.5 </Text>
                                    <Icon name='ios-star' style={{fontSize: 12,marginTop: 0, lineHeight: 13, left: 10, backgroundColor: 'transparent'}} />
                                </View>
                                <Text>Mike Ross</Text>
                            </Col>
                            <Col style={styles.driverInfoContainer}>
                                <Icon name='ios-car' style={{fontSize: 40}} />
                                <View style={styles.carInfo}>
                                    <Text style={{fontSize: 12,lineHeight: 13}}>KA09CD007</Text>
                                </View>
                                <Text style={{fontSize: 12,lineHeight: 15}}>MARUTI SUZUKI</Text>
                                <Text style={{fontSize: 10,lineHeight: 12}}>SWIFT DZIRE</Text>
                            </Col>
                        </Grid>
                        </CardItem>
                        </Card>


                        <View style={{flexDirection: 'row',height:40}}>
                            <Button bordered style={styles.card} textStyle={styles.btnText}>
                                    <Icon name='ios-call-outline' style={{fontSize: 15,paddingHorizontal: 10,marginLeft:20, left: 30}} />
                                   <Text style={{fontSize:13, paddingHorizontal:25}}> CONTACT </Text>
                            </Button>
                            <Button bordered style={styles.card}  onPress={() => Actions.home({type: ActionConst.REPLACE})}>
                              <Text style={styles.btnText}> CANCEL </Text>
                            </Button>
                        </View>
                        <Text style={styles.waitTime}>PICKUP TIME IS APPROXIMATELY 2 MINUTES</Text>
                    </View>



                    <View style={styles.headerContainer}>
                    <Header androidStatusBarColor={commonColor.statusBarLight} style={Platform.OS === 'ios' ? styles.iosHeader : styles.aHeader }>
                        <Left><Button transparent   onPress={() => Actions.pop()} >
                            <Icon name='md-arrow-back' style={{fontSize: 28,color: '#1b557a'}} />
                        </Button></Left>
                      <Body><Title style={{color: '#1b557a'}}>En Route</Title></Body><Right/>
                    </Header>
                    <View style={styles.srcdes}>
                        <Card style={styles.searchBar}>
                            <CardItem style={{borderWidth: 0,borderColor: 'transparent'}}>
                                <Text style={styles.confirmation}>DRIVER CONFIRMED AND EN ROUTE</Text>
                            </CardItem>
                        </Card>
                    </View>
                    </View>
                </View>
        )
    }
}

export default connect()(RideBooked);
