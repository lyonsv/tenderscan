setInterval(function () {

var previousData = null;

  $.ajax({
    url: "http://136.206.54.244:8080/measurements/?id=1",
    context: document.body
  }).done(function(data) {
    console.log(data);
    if(data != previousData){
      // reload
      window.reload();
    } else {
    }
    previousData = data;
  });
}, 1000);
