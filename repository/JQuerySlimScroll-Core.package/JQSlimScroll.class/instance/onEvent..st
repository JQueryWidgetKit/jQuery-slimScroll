options
onEvent: aJSScript
  self
    call: 'bind'
    with: 'slimscroll'
    with: (aJSScript asFunction: #('e' 'position'))