$(function () {
  if ($('#measurements').length > 0) {
    setTimeout(updateMeasurements, 10000);
  }
});

function updateMeasurements() {
  $.getScript('/measurements.js');
  setTimeout(updateMeasurements, 10000);
}

