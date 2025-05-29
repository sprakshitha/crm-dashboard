fetch('data.php')
.then(response => response.json())
.then(data => {
    const labels = data.map(item => item.created_at);
    const totals = data.map(item => item.total);

    new Chart(document.getElementById('chart'), {
        type: 'bar',
        data: {
            labels: labels,
            datasets: [{
                label: 'Total Purchases',
                data: totals,
                backgroundColor: 'rgba(75, 192, 192, 0.6)'
            }]
        }
    });
});
