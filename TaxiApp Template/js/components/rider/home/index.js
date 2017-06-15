'use strict';

import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Image, View, Dimensions, Platform, StatusBar } from 'react-native';
import { Header, Content, Text, Button, Icon, Card, Title, Item, Input, Left, Right, Body  } from 'native-base';
import { Grid, Col, Row } from 'react-native-easy-grid';
import MapView from 'react-native-maps';
import { Actions, ActionConst } from 'react-native-router-flux';

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


class Home extends Component {

    constructor(props) {
        super(props);
        this.state = {
            opacity: 1,
            visible: false,
            uberPoolSelect: true,
            uberGoSelect: false,
            uberXSelect: false,
            uberXLSelect: false,
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
        this.uberPool = this.uberPool.bind(this);
        this.uberGo = this.uberGo.bind(this);
        this.uberX = this.uberX.bind(this);
        this.uberXL = this.uberXL.bind(this);
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
    onDidFocus(){
        console.log('done');
    }
    uberPool() {
        this.setState({uberPoolSelect: true,uberXLSelect: false,uberXSelect: false,uberGoSelect: false});
    }
    uberGo() {
        this.setState({uberPoolSelect: false,uberXLSelect: false,uberXSelect: false,uberGoSelect: true});
    }
    uberX() {
        this.setState({uberPoolSelect: false,uberXLSelect: false,uberXSelect: true,uberGoSelect: false});
    }
    uberXL() {
        this.setState({uberPoolSelect: false,uberXLSelect: true,uberXSelect: false,uberGoSelect: false});
    }
    render() {
        return (
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
                        </MapView>)
                        : <View />
                        } 
                        <Image source={require('../../../../images/dummyMap.png')} style={{height: height, opacity: this.state.opacity}}/>
                        <View style={styles.pinContainer}>
                            <Button rounded  onPress={() => Actions.confirmRide()} iconRight style={styles.pinButton}>
                               <Text style={{ color: '#fff'}}> SET PICKUP LOCATION </Text>
                                <Icon name='ios-arrow-forward' style={{fontSize: 28}} />
                            </Button>

                            <View style={styles.pin}>
                            </View>
                        </View>
                    <View style={styles.slideSelector}>
                        {this.state.uberPoolSelect === true &&
                        <View style={styles.shareContainer}>
                            <Grid>
                                <Col  style={{...styles.shareOptions, width: width/1.4}}><Text style={{color: '#555', fontSize:15}}>Share your car and save upto<Text style={styles.shareType}> 50%</Text></Text>
                                </Col>
                                <Col style={styles.share}><Text style={{fontSize: 15}}>1-2 people</Text></Col>
                            </Grid>
                        </View>
                        }
                        {this.state.uberGoSelect === true &&
                        <View style={styles.shareContainer}>
                            <Grid style={{justifyContent: 'center'}}>
                                <Col style={{...styles.shareOptions, width: width/1.4}}><Text style={{color: '#555', fontSize:14}}>SELECT<Text style={styles.shareType}> TAXIPOOL</Text> NEXT</Text></Col>
                                <Col style={styles.share}><Text style={{fontSize:9 ,fontWeight: '600'}}>SAVE UPTO 50%</Text></Col>
                            </Grid>
                        </View>
                        }
                        <Grid>
                            <Col style={styles.taxiTypeContainer} >
                                <Row>
                                <Text numberOfLines= {1} >TaxiPool</Text>
                                </Row>
                                <Row style={this.state.uberPoolSelect === true ? styles.taxiType : {}}>
                                    <View style={{ ...this.state.uberPoolSelect === true ? styles.taxi : {}, marginVertical: (Platform.OS === 'android') ? 6 : undefined }}>
                                        <Icon name={this.state.uberPoolSelect === false ? 'ios-radio-button-off' : 'ios-people' } style={this.state.uberPoolSelect === false ? styles.taxiIcon : styles.selectedTaxi} onPress={this.uberPool.bind(this)} />
                                    </View>
                                </Row>
                            </Col>
                            <Col style={styles.taxiTypeContainer}>
                                <Row>
                                <Text numberOfLines= {1}>TaxiGO</Text>
                                </Row>
                                <Row style={this.state.uberGoSelect === true ? styles.taxiType : {}}>
                                    <View style={{ ...this.state.uberGoSelect === true ? styles.taxi : {}, marginVertical: (Platform.OS === 'android') ? 6 : undefined }}>
                                        <Icon name={this.state.uberGoSelect === false ? 'ios-radio-button-off' : 'ios-car' } style={this.state.uberGoSelect === false ? styles.taxiIcon : styles.selectedTaxi} onPress={this.uberGo.bind(this)} />
                                    </View>
                                </Row>
                            </Col>
                            <Col style={styles.taxiTypeContainer}>
                                <Row>
                                <Text  numberOfLines= {1}>TaxiX</Text>
                                </Row>
                                <Row style={this.state.uberXSelect === true ? styles.taxiType : {}}>
                                    <View style={{ ...this.state.uberXSelect === true ? styles.taxi : {}, marginVertical: (Platform.OS === 'android') ? 6 : undefined }}>
                                        <Icon name={this.state.uberXSelect === false ? 'ios-radio-button-off' : 'ios-car' } style={this.state.uberXSelect === false ? styles.taxiIcon : styles.selectedTaxi} onPress={this.uberX.bind(this)} />
                                    </View>
                                </Row>
                            </Col>
                            <Col style={styles.taxiTypeContainer}>
                                <Row>
                                <Text numberOfLines= {1}>TaxiXL</Text>
                                </Row>
                                <Row style={this.state.uberXLSelect === true ? styles.taxiType : {}}>
                                    <View style={{ ...this.state.uberXLSelect === true ? styles.taxi : {}, marginVertical: (Platform.OS === 'android') ? 6 : undefined }}>
                                        <Icon name={this.state.uberXLSelect === false ? 'ios-radio-button-off' : 'ios-car' } style={this.state.uberXLSelect === false ? styles.taxiIcon : styles.selectedTaxi} onPress={this.uberXL.bind(this)} />
                                    </View>
                                </Row>
                            </Col>

                        </Grid>
                    </View>
                    <View style={styles.headerContainer}>
                    <Header  iosStatusbar="default" style={Platform.OS === 'ios' ? styles.iosHeader : styles.aHeader } androidStatusBarColor={commonColor.statusBarLight}>
                        <Left><Button transparent onPress={this.props.openDrawer} >
                            <Icon name='ios-menu' style={{color: '#1b557a'}} />
                        </Button></Left>
                       <Body><Title style={{color: '#1b557a',marginTop: -2}}>Taxi App</Title></Body><Right/>
                    </Header>
                    <Card style={Platform.OS === 'ios' ? styles.iosSearchBar : styles.aSearchBar}>
                        <Grid>
                            <Col size={1} style={{padding: 15}}><Icon name='ios-search' style={{fontSize: 20}} />
                            </Col>
                            <Col size={4} style={{ justifyContent:'center', alignItems: 'center', marginLeft: -120 }}>
                                <Row style={Platform.OS === 'ios' ? {padding: 5} : {padding: 8, left: -8}}>
                                    <Text style={{...styles.SearchPickText, alignSelf: 'flex-start' }}>PICKUP LOCATION</Text>
                                </Row>
                                <Row style={ Platform.OS==='android'? {marginTop: -20, left: -10 }:{marginTop: -30 , padding: 5, left: -10 }}>
                                   <Item regular style={(Platform.OS === 'android') ? { flex: 1, alignItems: 'center', borderWidth: 0, paddingBottom: 5} : {flex: 1, alignItems: 'center', borderWidth: 0}}>
                                       <Input placeholder='Go To Pin' placeholderTextColor={commonColor.lightThemePlaceholder} style={{ top:(Platform.OS === 'ios') ? -5 : 2, fontSize:15, textAlign: 'center'}}/>
                                   </Item>
                                </Row>
                            </Col>
                        </Grid>
                    </Card>
                    </View>
                </View>
        )
    }
}
function bindActions(dispatch){
    return {
        openDrawer: () => dispatch(openDrawer()),
    };
}
const mapStateToProps = state => ({
  navigation: state.cardNavigation,
});

export default connect(mapStateToProps, bindActions)(Home);
