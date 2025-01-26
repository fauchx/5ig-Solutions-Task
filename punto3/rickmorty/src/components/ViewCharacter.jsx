import React, { useEffect, useState } from 'react';
import { fetchCharacters, fetchSingleCharacter } from '../services/Connection';

function ViewCharacter({ character }) {
    const [characters, setCharacters] = useState([]);
    const [loading, setLoading] = useState(false);
    const [error, setError] = useState(null);

    useEffect(() => {
        setLoading(true);
        setError(null);

        if (!character) {
            // If search input is empty, fetch ALL characters
            fetchCharacters()
                .then(data => setCharacters(data.results))
                .catch(err => setError(err.message))
                .finally(() => setLoading(false));
        } else {
            // If user is typing, fetch filtered results
            fetchSingleCharacter(character)
                .then(data => {
                    if (data.results && data.results.length > 0) {
                        setCharacters(data.results);
                    } else {
                        setCharacters([]);
                        setError("No results found");
                    }
                })
                .catch(err => setError(err.message))
                .finally(() => setLoading(false));
        }
    }, [character]); // Re-fetch every time the user types

    if (loading) return <p>Loading...</p>;
    if (error) return <p>{error}</p>;

    return (
        <div>
            {characters.length > 0 ? (
                <ul>
                    {characters.map((char) => (
                        <li key={char.id}>
                            <h2>{char.name}</h2>
                            <img src={char.image} alt={char.name} />
                            <p>{char.species}</p>
                            <p>{char.status}</p>
                        </li>
                    ))}
                </ul>
            ) : (
                <p>No characters found</p>
            )}
        </div>
    );
}

export default ViewCharacter;
