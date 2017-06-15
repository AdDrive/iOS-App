import { Platform } from 'react-native';
import _ from 'lodash';

import variable from './../variables/platform';

export default (variables = variable) => {
  const textTheme = {
      fontSize: variables.DefaultFontSize - 1,
      fontFamily: variables.fontFamily,
      color: variables.toolbarDarkBg,
      '.note': {
        color: variables.lightThemePlaceholder,
        fontSize: variables.noteFontSize
      }
  };

  return textTheme;
};
