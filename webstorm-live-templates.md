# Live Templates for WebStorm

At iCapps we are experienced Webstorm users. This is a collection of our custom Live Template.

More about live templates can be read in Webstorms documentation: https://www.jetbrains.com/help/webstorm/2016.3/live-templates.html

An overview:

- [Javascript templates](#javascript-templates)
- [React templates](#react-templates)
- [React native templates](#react-native-templates)

## Add'm to Webstorm

How to add Live Template in Webstorm

1. open preferences
2. editor > live templates
3. add template group for React Native
4. add templates below to the new group
5. define context > javascript
6. edit variables > add "fileNameWithoutExtension" to "$fnName$"




## Javascript templates

#### `deb`: Debugger
```javascript
debugger;
```

#### `log`: Console.log
```javascript
console.log($CONTENT$);
```


#### `iife`: Immediately-Invoked Function Expression
```javascript
(function () {
    $CONTENT$
}());
```

#### `pro`: Promise ES6 style

```javascript
new Promise((resolve, reject) => {
    $CONTENT$
});
```

#### `pro`: Promise ES5 style

```javascript
new Promise(function(resolve, reject) {
    $CONTENT$
});
```


#### `f`: Function ES6 style

```javascript
($ARGUMENTS$) => {
    $BODY$
}
```


#### `fu`: Function ES5 style

```javascript
function $NAME$($ARGUMENTS$) {
    $BODY$  
}
```

#### `class`: Class

```javascript
class $CLASS_NAME$ {
  constructor($CONSTRUCTOR_ARGUMENTS$) {
    $CONTRUCTOR_BLOCK$
  }
}
```


#### `us`: Use strict

```javascript
'use strict';
$END$
```

## React templates

#### `cdm`: componentDidMount

```javascript
componentDidMount() {
  $END$
}
```


#### `cdu`: componentDidUpdate

```javascript
componentDidUpdate(prevProps, prevState) {
  $END$
}
```


#### `cstr`: constructor

```javascript
constructor(props) {
  super(props);
  
  this.state = {
    $START$: $END$
  };
}
```


#### `cwm`: componentWillMount

```javascript
componentWillMount() {
  $END$
}
```


#### `cwr`: componentWillReceiveProps

```javascript
componentWillReceiveProps(nextProps) {
  $END$
}
```


#### `cwu`: componentWillUpdate

```javascript
componentWillUpdate(nextProps, nextState) {
  $END$
}
```


#### `cwum`: componentWillUnmount

```javascript
componentWillUnmount() {
  $END$
}
```


#### `rcomp`: react component (es6)

```javascript
import React, {Component, PropTypes} from 'react';

class $COMPONENT$ extends Component {
  render() {
    return (
      <div>$END$</div>
    );
  }
}

$COMPONENT$.propTypes = {
};

$COMPONENT$.defaultProps = {
};

export default $COMPONENT$;
```


#### `rrcomp`: react redux component

```javascript
import React, {Component, PropTypes} from 'react';
import {connect} from 'react-redux'

class $COMPONENT$ extends Component {
  render() {
    return (
      <div>$END$</div>
    );
  }
}

$COMPONENT$.propTypes = {
};

$COMPONENT$.defaultProps = {
};

const mapStateToProps = (state) => {
  return {
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
  };
};

export default connect(mapStateToProps, mapDispatchToProps)($COMPONENT$);
```


#### `scu`: shouldComponentUpdate

```javascript
shouldComponentUpdate(nextProps, nextState) {
  $END$
}
```




## React native templates

#### `rncc`: React Native Statefull Component

```javascript
import React, { Component } from 'react';
import { View } from 'react-native';

class $fnName$ extends Component {
  propTypes = {$PROP_TYPES$}
  state = {$STATE$};

  render() {
    return (
        $RENDER$
    )
  }
}
```


#### `rncf`: React Native Functional Component

```javascript
import React from 'react';
import { View } from 'react-native';

export const $fnName$ = () => {
  return (
    $RENDER$
  )
};

$fnName$.propTypes = {
    $PROP_TYPES$
}
```


#### `rnrs`: React Native Redux Store

```javascript
export function dummieDispatch (state) {
  return {
    type: TEST,
    state,
  }
}

export function dummieAction () {
  return function (dispatch, getState) {
    dispatch(dummieDispatch())
  }
}



const initialState = {
 
}

export default function settings (state = initialState, action) {
  switch (action.type) {
    case TEST :
      return {
        ...state,
      }
    default :
      return state
  }
}
```



#### `rnss`: React Native Stylesheet

```javascript
import { StyleSheet } from 'react-native';

const styles = StyleSheet.create({
    $CONTENT$
});

export default styles;
```
