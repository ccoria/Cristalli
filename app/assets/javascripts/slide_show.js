// TODO: 
// - lazy load images and test on browsers
// - make it run only in home
// - put all scripts in files

var start_slide_photo = function (photos) {
    var photos_size = photos.length,
        $photos = [];
    
    // jqueryfying elements  
    $.each(photos, function (idx, value) {
        $photos.push($(value));
    });
    
    var show_slide = function (index) {
        //console.log("received: " + index);
        var current_index = (index && index < photos_size) ? index : 0,
            old_index = (current_index === 0) ? photos_size-1 : current_index-1,
            current_photo = $photos[current_index],
            old_photo = $photos[old_index];
        
        if (old_photo.is(":visible")) {
            old_photo.fadeOut();
        }

        current_photo.fadeIn(function () {
            setTimeout(function () {
                show_slide(current_index+1)
            }, 3000);
        });
    }
    
    // start to show imagem from 0
    show_slide(0);
}