$ ->

  Galleria.loadTheme('/assets/themes/azur/galleria.azur.js')
  Galleria.run '#album',
    flickr: 'set:72157636074884034',
    flickrOptions:
      sort: 'date-posted-asc',
      imageSize: 'big'
