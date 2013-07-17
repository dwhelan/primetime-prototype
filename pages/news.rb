class News < Page
  set_url '/news'
  set_url_matcher %r{^http://www.synacor.net/news(/index.php)?$}
end