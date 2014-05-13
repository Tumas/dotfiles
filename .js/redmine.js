$('.attachments p').each(
  function(){
    var id = $('a.icon-attachment', this).prop('href');
    var elem = $("<input type=\"checkbox\">");

    if (sessionStorage.getItem(id)){
      elem.prop('checked', true);
    }
    
    elem.on('change', function(){
      var checked = $(this).prop('checked');

      if (checked){
        sessionStorage.setItem(id, true);
      } else {
        sessionStorage.removeItem(id);
      }
    });

    $(this).append(elem);
  }
)
