import React from 'react';

// The Search component is created as a stateless component, once the state is not used.
// The only action that the component needs to perform is to send the text to the parent component.
export default (props) =>
        <div style={{marginTop: '14px'}}>
            <input 
                type="text" 
                placeholder="Search for a user..."
                onChange={(e) => props.handleChange(e.target.value)}
                className="form-control"
            />
            <div>
                <span>
                    Total: {props.filtered} of {props.total}
                </span>
            </div>
            <hr />
        </div>