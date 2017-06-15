'use strict';

import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Image, View, Dimensions,TouchableWithoutFeedback,StatusBar,Platform } from 'react-native';
import { Actions, ActionConst } from 'react-native-router-flux';
import { Content, Text, Icon,Header,Title, Left, Right, Body, Container  } from 'native-base';
import MapView from 'react-native-maps';

import styles from './styles';
import commonColor from '../../../../native-base-theme/variables/commonColor';

var { width, height } = Dimensions.get('window');
const ASPECT_RATIO = width / height;
const LATITUDE = 12.920614;
const LONGITUDE = 77.586234;
const LATITUDE_DELTA = 0.1722;
const LONGITUDE_DELTA = LATITUDE_DELTA * ASPECT_RATIO;
const SPACE = 0.01;


class RideRequest extends Component {

    constructor(props) {
        super(props);
        this.state = {
            a: {
                latitude: LATITUDE ,
                longitude: LONGITUDE,
            },
            b: {
                latitude: 12.900000,
                longitude: 77.586034,
            },

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
            <Container style={{ backgroundColor: '#2980b9' }}>
            <TouchableWithoutFeedback style={styles.pageTouch} onPress={() => Actions.pickRider({type:ActionConst.REPLACE})} >
            <View>
             <Header androidStatusBarColor={commonColor.statusBarColorDark} style={Platform.OS === 'ios' ? styles.iosHeader : styles.aHeader} iosBarStyle="light-content">
                        <Left/>
                            <Body><Title  style={Platform.OS === 'ios' ? styles.iosHeaderTitle : styles.aHeaderTitle }>Taxi</Title></Body><Right/>

                        </Header>
                <View style={styles.container}>
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
                                    <Icon name='ios-car' style={{ fontSize: 24 }} />
                                </View>
                            </MapView.Marker>
                            <MapView.Marker coordinate={this.state.a}>
                                <View>
                                    <Icon name='ios-pin'  />
                                </View>
                            </MapView.Marker>

                        </MapView>)
                        : <View />
                        }
                        <Image source={require('../../../../images/dummyMap.png')} style={{height: height, opacity: this.state.opacity}}/>

                    <Image source={require('../../../../images/map-bg.png')} style={styles.mapBg} >

                            <View style={styles.detailsContainer}>

                                <Text style={styles.time}>3 MINUTES</Text>
                                <Text style={styles.place}>
                                6, 39th Cross Rd, 4th T Block East,  Jayanagara, Bengaluru, Karnataka 560041</Text>
                                <View style={{flexDirection: 'row'}}>
                                    <Text style={styles.rating}>4.6 </Text>
                                    <Icon name='ios-star' style={Platform.OS === 'ios' ? styles.iosRateStar : styles.aRateStar } />
                                </View>
                            </View>
                        </Image>

                       
                </View>
                </View>
                </TouchableWithoutFeedback>
                    </Container>
        )
    }
}


export default connect()(RideRequest);
