$ ->

  $('#albums .album a.image img').each ->
    photo_id = $(this).data('id')
    $image = $(this)
    $.getJSON "http://api.flickr.com/services/rest/?method=flickr.photos.getInfo&api_key=2a2ce06c15780ebeb0b706650fc890b2&photo_id=#{photo_id}&format=json&jsoncallback=?", (data)->
      item = data.photo
      photo_url = 'http://farm' + item.farm + '.static.flickr.com/' + item.server + '/' + item.id + '_' + item.secret + '_z.jpg'
      $image.attr('src', photo_url)

  $('#albums .album').mouseenter ->

    if $('.description', this).length || $('.date', this).length
      height = $('.caption', this).height()
      $('.caption', this).height(height + 20)
      $('.caption', this).stop().animate({top: 323 - height}, 500, 'easeOutBack')

  $('#albums .album').mouseleave ->

    if $('.description', this).length || $('.date', this).length
      height = $('.caption', this).height()
      $('.caption', this).height(height - 20)
      $('.caption', this).stop().animate({top: '300px'}, 500, 'easeInOutCirc')

  $('#albums .album .caption').click ->
    link = $(this).siblings('a').attr('href')
    document.location.href = link
