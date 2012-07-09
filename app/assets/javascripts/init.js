
var cristalli = {
    urls: [
        "https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" // JQUERY  
    ],
    events_queue: {
        events: [],
        add: function (event_name, func) {
            //console.log("Adding: " + event_name + " - " + func);
            cristalli.events_queue.events[event_name] = func;
        },
        
        consume: function () {
            for (var evt_index in cristalli.events_queue.events) {
                var evt = cristalli.events_queue.events[evt_index];
                //console.log("Consuming: " + evt_index + " - " + evt);
                if (typeof evt === 'function') {
                    try {
                        evt();
                    } catch (e) {
                        //console.log(e.message);
                    }
                    
                    cristalli.events_queue.events.splice(evt_index);
                }
            }
        }
    }
}