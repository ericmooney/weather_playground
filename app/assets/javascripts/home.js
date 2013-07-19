$(document).ready(function(){

  Morris.Line({
    element: 'weathers_chart',
    data: $('#weathers_chart').data('weatherdata'),
    xkey: 'date',
    ykeys: ['min_temp', 'max_temp'],
    labels: ['Min Temp', 'Max Temp'],
    parseTime: false,
    lineColors: ['blue', 'red'],
    hideHover: true
  });

});
