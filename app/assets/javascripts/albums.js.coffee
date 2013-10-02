$ ->

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
