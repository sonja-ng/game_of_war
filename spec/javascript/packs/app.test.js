import React from 'react'
import App from '../../../app/javascript/components/app'
import { render, screen } from '@testing-library/react'
import '@testing-library/jest-dom'

describe('App', () => {
  test('renders App component', () => {
    render(<App />);

    expect(screen.getByText('Game of War')).toBeInTheDocument();
  });
});