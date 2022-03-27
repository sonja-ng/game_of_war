import React from 'react'
import Form from '../../../app/javascript/components/form'
import { render, screen, fireEvent } from '@testing-library/react'
import '@testing-library/jest-dom'
import userEvent from '@testing-library/user-event'

const testPlayer = {
    id: 1,
    name: "Eve"
};
describe('Form', () => {
    
    test('has a submit button', () => {
        render(<Form />);
        expect(screen.getByRole('button')).toBeInTheDocument();
    });

    test('has a text field', () => {
        render(<Form />);
        expect(screen.getByRole('textbox')).toBeInTheDocument();
    });
    
    test('calls the OnChange handler', () => {
        const onChange = jest.fn();

        render(
            <input value onChange={onChange}></input>
        );

        fireEvent.change(screen.getByRole('textbox'), {
            target: { value: 'hello' },
        });

        expect(onChange).toHaveBeenCalledTimes(1);
    })
});

