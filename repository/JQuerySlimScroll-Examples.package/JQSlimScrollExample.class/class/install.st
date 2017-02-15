install
install
  "JQSlimScrollExample install"

  | app |
  app := WAAdmin
    register: self
    asApplicationAt: 'examples/JQueryWidgetKit/SlimScroll'.
  app
    addLibrary: JQ2DevelopmentLibrary;
    addLibrary: JQSlimScrollLibrary