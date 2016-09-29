import React from 'react';

const Search = (props) =>
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
        
export default Search;