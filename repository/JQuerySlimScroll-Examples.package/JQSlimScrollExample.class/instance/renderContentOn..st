rendering
renderContentOn: canvas
  canvas heading: 'JQSlimScroll'.
  canvas div
    with: [ 
      canvas unorderedList
        script:
            (canvas jQuery this slimScroll
                width: '300px';
                height: '150px';
                positionLeft;
                color: 'rgba(100,200,200,0.5)';
                alwaysVisible;
                distance: '10px';
                startBottom;
                railVisible;
                railColor: 'orange';
                onEvent:
                    (JSStream new
                        nextPutAll: 'alert("I got an event at " + position)';
                        yourself);
                yourself);
        with: [ 
              self listItems
                do: [ :listItem | 
                  canvas listItem
                    with: [ 
                      canvas heading
                        level4;
                        with: listItem key.
                      canvas paragraph: listItem value ] ] ] ]