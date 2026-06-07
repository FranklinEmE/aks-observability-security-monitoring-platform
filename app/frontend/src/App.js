import { useEffect, useState } from "react";

function App() {

  const [message, setMessage] = useState("");

  useEffect(() => {

    fetch("/api/counter")
      .then(res => res.json())
      .then(data => {
        setMessage(
          `Visits: ${data.visits}`
        );
      });

  }, []);

  return (
    <div>
      <h1>AKS Observability Security Platform</h1>
      <h2>{message}</h2>
    </div>
  );
}

export default App;
