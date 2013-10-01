$ ->

  Galleria.loadTheme('/assets/themes/twelve/galleria.twelve.js')
  Galleria.run '#album',
    flickr: 'set:72157636076393986',
    flickrOptions:
      sort: 'date-posted-asc',
      imageSize: 'big'
