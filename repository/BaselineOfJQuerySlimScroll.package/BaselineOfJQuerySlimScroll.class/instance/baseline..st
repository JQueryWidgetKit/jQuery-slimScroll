baseline
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        package: 'JQuerySlimScroll-Core'
          with: [ spec requires: #('JQuerySlimScroll-Library') ];
        package: 'JQuerySlimScroll-Examples'
          with: [ spec requires: #('JQuerySlimScroll-Core') ];
        package: 'JQuerySlimScroll-Library';
        package: 'JQuerySlimScroll-Tests'
          with: [ spec requires: #('JQuerySlimScroll-Core') ].
      spec
        group: 'Slim Scroll' with: #('JQuerySlimScroll-Core');
        group: 'Slim Scroll Examples' with: #('JQuerySlimScroll-Examples');
        group: 'Slim Scroll Tests' with: #('JQuerySlimScroll-Tests');
        group: 'default' with: #('Slim Scroll Examples' 'Slim Scroll Tests') ]