import { useEffect, useState } from "react";
import { getData } from "../resources/getData";

function App() {
  const [data, setData] = useState([]);
  const [fetched, setFetched] = useState(false);

  useEffect(() => {
    getData()
      .then((response) => {
        setData(response);
        setFetched(true);
      })
      .catch((error) => {
        console.error("Error fetching data:", error);
        setFetched(false);
      });
  }, []);

  return (
    <div className="container mx-auto p-4">
      <h1 className="text-5xl font-bold text-center">MYSQL</h1>

      {fetched ? (
        <div className="container mx-auto p-4">
        <h2 className="text-2xl font-bold text-center mb-4">Retrieve Orders</h2>
        <div className="overflow-x-auto">
          <table className="w-full border-collapse border border-gray-300">
            <thead>
              <tr className="bg-gray-200 text-gray-700">
                <th className="border p-2">Order#</th>
                <th className="border p-2">Rep Code</th>
                <th className="border p-2">Trade Type</th>
                <th className="border p-2">Client Acct</th>
                <th className="border p-2">Sponsor</th>
                <th className="border p-2">Cusip</th>
                <th className="border p-2">Priced</th>
                <th className="border p-2">Emp Disc</th>
                <th className="border p-2">Roll Over</th>
                <th className="border p-2">Group#</th>
                <th className="border p-2">Sponsor FundId</th>
                <th className="border p-2">Principal Agent</th>
                <th className="border p-2">Trade Note</th>
                <th className="border p-2">Sponsor Manual</th>
              </tr>
            </thead>
            <tbody>
              {data.map((order, index) => (
                <tr key={index} className="border">
                  <td className="border p-2">{order.order_number}</td>
                  <td className="border p-2">{order.rep_code}</td>
                  <td className="border p-2">{order.trade_type}</td>
                  <td className="border p-2">{order.client_account}</td>
                  <td className="border p-2">{order.sponsor}</td>
                  <td className="border p-2">{order.cusip}</td>
                  <td className="border p-2">${order.priced}</td>
                  <td className="border p-2">{order.emp_disc ? "Yes" : "No"}</td>
                  <td className="border p-2">{order.roll_over ? "Yes" : "No"}</td>
                  <td className="border p-2">{order.group_number}</td>
                  <td className="border p-2">{order.sponsor_fundid}</td>
                  <td className="border p-2">{order.principal_agent}</td>
                  <td className="border p-2">{order.trade_note}</td>
                  <td className="border p-2">{order.sponsor_manual}</td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      </div>
        
      ) : (
        <h2 className="text-center text-red-500 mt-4">No data available</h2>
      )}
    </div>
  );
}

export default App;
