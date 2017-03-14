jQuery(function($){

$('#costs')
      .on('cocoon:before-insert', function() {
        $("#owner_from_list").hide();
        $("#owner a.add_fields").hide();
      })
      .on('cocoon:after-insert', function() {
        /* ... do something ... */
      })
      .on("cocoon:before-remove", function() {
        $("#owner_from_list").show();
        $("#owner a.add_fields").show();
      })
      .on("cocoon:after-remove", function() {
        /* e.g. recalculate order of child items */
      });
})