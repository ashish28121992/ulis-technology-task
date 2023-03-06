import React, { useState } from 'react'
import { useEffect } from 'react';
import background from "./../img/task04_image.png";

function Printstar() {
  const [rows, setRows] = useState('')
  console.log(rows)

  useEffect(() => {
    setRows()
  }, [])

  const rowsArr = [];
  function EquilateralTrianglePattern(rows) {
    for (let i = 0; i < rows; i++) {
      const spacesArr = Array(rows - i).fill("-");
      const starsArr = Array(i + 1).fill("* ");
     const rowArr = [...spacesArr, ...starsArr];
      rowsArr.push(rowArr);
    }
  }

  return (
    <div className='container m-4 p-4' style={{backgroundImage:`url(${background})`,
    backgroundRepeat:"no-repeat",
    backgroundPosition:"right top",
    height:"720px",
    width:"550px"}}>
    
      <label><h4 style={{margin:"1rem"}}>Type number Here</h4></label>
      <input style={{margin:"1rem"}} type="number" placeholder='Enter Number'
        value={rows} onChange={(e) => setRows(e.target.value)}
      />
      {EquilateralTrianglePattern(rows)}
      {rowsArr.map((row, index) => (
        <div key={index}>{row.join("")}</div>
      ))}
    </div>
  );
}

export default Printstar
