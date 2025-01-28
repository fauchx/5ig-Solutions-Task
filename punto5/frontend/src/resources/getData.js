import { backend_url } from "../utils";

export const getData = async () => {
  try {
    const response = await fetch(`${backend_url}/orders`, {
      method: "GET",
    });

    if (!response.ok) {
      throw new Error(`HTTP error! Status: ${response.status}`);
    }

    // Verificar si la respuesta es JSON antes de convertir
    const contentType = response.headers.get("content-type");
    if (!contentType || !contentType.includes("application/json")) {
      throw new Error("Received non-JSON response from server");
    }

    return await response.json();
  } catch (error) {
    console.error("Error fetching data:", error);
    return []; // Devuelve un array vacío si falla
  }
};
