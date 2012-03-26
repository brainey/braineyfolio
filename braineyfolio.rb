#!/usr/bin/env ruby

require "sinatra"

MY_NAME = "Bill Rainey"
LINK_TEXT = <<LINK_TEXT
  Add Links to GitHub, LinkedIn or
  <a href="http://blog.angelbob.com">whatever makes you look good</a>
  here!
LINK_TEXT

# You can omit any tag of any entry and it will just be empty.  Any
# entry not marked professional goes in personal.  The links with
# class "fancybox" in pictures will open a lightbox when clicked on.
# The outer link (a href) contains the image that will appear when
# clicked on.  The inner img tag contains the thumbnail, which can be
# the same image if you're not worried about bandwidth.

# Ruby allows single-quoted or double-quoted strings, or shell-style
# strings with <<END_STRING, which go until you see END_STRING on a
# line by itself.  All of them are just strings, though.
#
# In double-quoted strings you can use "#{ruby code}" to embed ruby
# code in your strings.
#
# Those things with the colon on the front are symbols.  They're
# basically like strings as far as you're concerned.

ENTRIES = [
  {
    :professional => true,
    :tags => [ :c,  "C++", :perl, :perforce ],
    :dates => "2011-present",
    :organization => "Narus",
    :description => "Massive Packet Capture and Analysis",
    :tools => 'C, Perforce, Perl, MySQL, Tableau',
    :role => "Senior Software Engineer",
    :pictures => <<PICTURES,
    <a class="fancybox" href="http://onproductmanagement.files.wordpress.com/2007/06/what-enterprise-software-delivers.jpg">
      <img src="http://onproductmanagement.files.wordpress.com/2007/06/what-enterprise-software-delivers.jpg" alt="Enterprise Pyramid" /> </a>
PICTURES
  },
  {
    :professional => true,
    :tags => [ :c, :mobile, :linux, :gtk, :smart_phones, :perforce ],
    :dates => "2006-2009",
    :organization => "Palm Source / ACCESS Systems Americas",
    :description => "Develope a mobile Linux platform for smart phones",
    :tools => "C, GtK, Perforce",
    :role => "Senior Software Engineer",
    :pictures => <<PICTURES,
  <a class="fancybox" href="http://scienceblogs.com/gregladen/images/LOLcode_book.jpg">
    <img src="http://scienceblogs.com/gregladen/images/LOLcode_book.jpg" alt="LolCRM 1" /> </a>
  <a class="fancybox" href="http://beerpla.net/wp-content/uploads/TheUltimatePunProgrammingInLOLCODE_11173/image.png">
    <img src="http://beerpla.net/wp-content/uploads/TheUltimatePunProgrammingInLOLCODE_11173/image.png" alt="LOLCrm 2" />
  </a>
PICTURES
  },
  {
    :professional => false,
    :tags => [ :student ],
    :dates => "2008",
    :organization => '<a href="http://www.cmu.edu">Carnegie Mellon University</a>',
    :description => "Parallel Artificial Intelligence Monads for Bovik-Tetizu Network Architectures, A Love Story",
    :tools => "AcademiaLISP, SML/NJ",
    :role => "Author",
    :pictures => <<PICTURES,
    <a href="http://static.lulu.com/product/paperback/sigbovik-2009/6522581/thumbnail/320" class="fancybox">
      <img src="http://static.lulu.com/product/paperback/sigbovik-2009/6522581/thumbnail/320" /></a>
PICTURES
  },

]

get "/" do
  erb :index, :locals => { :MY_NAME => MY_NAME,
                           :LINK_TEXT => LINK_TEXT,
                           :ENTRIES => ENTRIES }
end
