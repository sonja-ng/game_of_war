import React, { useState } from 'react';
import { Link, Route } from 'react-router-dom';

const Form = () => {
    const [values, setValues] = useState({ name: '' })

    const handleNameChange = e => {
        e.preventDefault();
        setValues(values => ({
            name: e.target.value
        }));
    };

    // const enterGame = async() => {
    //     await fetch('api/players')

    // }
    
    // const handleSubmit = e => {
    //     e.preventDefault();

    // }

    return (
        <form>
            <label>Enter your name
            <input type="text" onChange={handleNameChange} placeholder="Enter your name" value={values.name}/>
            </label>
            <button>Play Game</button>
        </form>
    );
}

export default Form;