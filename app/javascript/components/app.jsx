import React from 'react';
import { Route, Routes, } from 'react-router-dom';
import Game from './game.jsx'
import Form from './form.jsx'

const App = () => (
    <>
        <h1>Game of War</h1>
        <Routes>
            <Route path="/game/:id" element={<Game/>} />
            <Route exact path="/" element={<Form/>} />
        </Routes>
    </>
)

export default App;