# Photogallery

## Very cool viewer [Flickr][flickr] sets
[flickr]: http://www.flickr.com

It is very easy to use. After cloning photogallery you need to install gems and setup your database or immediately deploy to heroku

```bash
$ cd photogallery
$ bundle install
```

Deploy to heroku also is very simple, you can read this [article][heroku_deploy]
[heroku_deploy]: http://whitey.herokuapp.com/ror/deploy/heroku/2

Don't forget

```bash
$ rake db:migrate
$ rake db:seed
```

Or for heroku

```bash
$ heroku run rake db:migrate
$ heroku run rake db:seed
```

## The administrative back-end use [Rails Admin][rails_admin]
[rails_admin]: https://github.com/sferik/rails_admin

You can enter in administrator back-end

    xxx.xx/admin
    
```text
email: admin@mail.com
password: password
```

##Important fields in the album

Title: title of the album

Image: photo id from flickr

Flickr: set id from flickr

Video: you can add video from vimeo or youtube (must provide a link to the video)
