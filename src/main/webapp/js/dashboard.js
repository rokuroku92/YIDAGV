/* globals Chart:false, feather:false */

/* global feather */
var myChart = null;
(function () {
  'use strict';

  feather.replace({ 'aria-hidden': 'true' });

  // Graphs
  var ctx = document.getElementById('myChart');
  // eslint-disable-next-line no-unused-vars
  myChart = new Chart(ctx, {
    type: 'line',
    data: {
      labels: [
        
      ],
      datasets: [{
        label:"稼動率",
        data: [
          
        ],
        lineTension: 0,
        backgroundColor: 'transparent',
        borderColor: '#007bff',
        borderWidth: 4,
        pointBackgroundColor: '#007bff'
      },
      {
          label:"任務數",
          data: [
            
          ],
          lineTension: 0,
          backgroundColor: 'transparent',
          borderColor: '#FFB957',
          borderWidth: 4,
          pointBackgroundColor: '#FFB957'
        }]
    },
    options: {
      scales: {
        yAxes: [{
          ticks: {
            beginAtZero: false
          }
        }]
      },
      legend: {
        display: true
      }
    }
  });
})();
