import React, { useState, useEffect } from "react";
import { Line } from "react-chartjs-2";
import axios from "axios";

const Tbloodsugar = () => {
  const [chartData, setChartData] = useState({});
  const [date, setdate] = useState([]);
  const [value, setvalue] = useState([]);

  const chart = () => {
    let dateval = [];
    let valval = [];
    axios
      .get("http://localhost/testbloodsugar.php")
      .then(res => {
        console.log(res);
        for (const dataObj of res.data) {
          console.log(dataObj.Value);
          valval.push(parseFloat(dataObj.Value));
          dateval.push((dataObj.Date1));
        }
        setChartData({
          labels: dateval,
          datasets: [
            {
              label: "bloodsugar level",
              data: valval,
              backgroundColor: ["rgba(75, 192, 192, 0.6)"],
              borderWidth: 4
            }
          ]
        });
      })
      .catch(err => {
        console.log(err);
      });
    console.log(dateval, valval);
  };

  useEffect(() => {
    chart();
  }, []);
  return (
    <div className="App">
      <h1>bloodsugar Tracker</h1>
      <div>
        <Line
          data={chartData}
          options={{
            responsive: true,
            title: { text: "bloodsugar scale", display: true },
            scales: {
              yAxes: [
                {
                  ticks: {
                    autoSkip: true,
                    maxTicksLimit: 10,
                    beginAtZero: true
                  },
                  gridLines: {
                    display: false
                  }
                }
              ],
              xAxes: [
                {
                  gridLines: {
                    display: false
                  }
                }
              ]
            }
          }}
        />
      </div>
    </div>
  );
};

export default Tbloodsugar;
