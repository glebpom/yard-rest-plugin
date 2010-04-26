function fullListSearch() {
  $('#search input').keyup(function() {
    var value = this.value.toLowerCase();
    if (value == "") {
      $('#full_list').removeClass('insearch');
      $('#full_list li').each(function() {
        var link = $(this).children('a:last');
        link.text(link.text()); 
      });
      highlight();
    }
    else {
      $('#full_list').addClass('insearch');
      $('#full_list li').each(function() {
        var link = $(this).children('a:last');
        var text = link.text();
        if (text.toLowerCase().indexOf(value) == -1) {
          $(this).removeClass('found');
          link.text(link.text());
        }
        else {
          $(this).css('padding-left', '10px').addClass('found');
          link.html(link.text().replace(new RegExp("(" + 
            value.replace(/([\/.*+?|()\[\]{}\\])/g, "\\$1") + ")", "ig"), 
            '<strong>$1</strong>'));
        }
      });
      highlight(true);
    }
    
    if ($('#full_list li:visible').size() == 0) {
      $('#noresults').fadeIn();
    }
    else {
      $('#noresults').hide();
    }
  });
  
  $('#search input').focus();
  $('#full_list').after("<div id='noresults'>No results were found.</div>")
}

function highlight(no_padding) {
  var n = 1;
  $('#full_list li:visible').each(function() {
    var next = n == 1 ? 2 : 1;
    $(this).removeClass("r" + next).addClass("r" + n);
    if (!no_padding && $('#full_list').hasClass('class')) {
      $(this).css('padding-left', (10 + $(this).parents('ul').size() * 15) + 'px');
    }
    n = next;
  });
}

$(fullListSearch);
