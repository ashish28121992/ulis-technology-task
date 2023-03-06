
import React, { useState, useEffect } from 'react';
import axios from 'axios';

function Hindi() {
    const [jsonData, setJsonData] = useState([]);

    useEffect(() => {
        axios.get('http://localhost:3233/hindi-data')
            .then((response) => setJsonData(response.data))
            .catch(error => console.error(error));
    }, []);
    return (
        <div>
            {console.log(jsonData)}

            {jsonData && jsonData.map((item, index) => {
                return (
                    <ul key={index.data}>
                        <li>{item.name}</li>
                        <li>{item.dob}</li>
                    </ul>
                )
            }
            )}
        </div>
    )
}

export default Hindi
