$(document).on('turbolinks:load', function() {
  t = JSON.parse(document.getElementById('study-data').dataset.json);
  console.log(t[0])
  var ctx = document.getElementById('myChart');
  var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
      labels: ['9days ago', '8days ago', '7days ago', '6days ago', '5days ago', '4days ago','3days ago','2days ago', '1days ago', 'today'],
      datasets: [{
        label: '過去10日間の学習時間',
        data: [t[9],t[8],t[7],t[6],t[5],t[4],t[3],t[2],t[1],t[0]],
        backgroundColor: 'grey',
        borderColor: 'grey',
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        yAxes: [{
          ticks: {
            beginAtZero: true
          }
        }]
      },
      maintainAspectRatio: false
    }
  });
});
