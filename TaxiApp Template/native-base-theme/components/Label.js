import { Platform } from 'react-native';
import _ from 'lodash';

import variable from './../variables/commonColor';

export default (variables = variable) => {
  const labelTheme = {
      '.focused': {
        width: 0,
      },
      '.note':{
      	color: variables.lightThemeColor,
      },
      fontSize: 17,
  };


  return labelTheme;
};
