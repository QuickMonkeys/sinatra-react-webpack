import React from 'react';
import Client from './client.jsx';
import Search from './search.jsx';

import HocStyle from './hocStyle.jsx';

const ClientHocStyle = HocStyle(Client);

export default class Clients extends React.Component {
    
    constructor() {
        super();
        this.state = {clients: [], search: ''};
        this.handleChange = this.handleChange.bind(this);
    }

    componentDidMount() {
        $.getJSON( "/clients.json", function( result ) {
            this.setState({clients: result});
        }.bind(this));
    }
    
    hasString(name, text) {
        return name.toUpperCase().indexOf(text.toUpperCase()) >=0;
    }
    
    handleChange(text) {
        this.setState({search: text});
    }
    
    prepareRender(){
        
        let {clients, search} = this.state;

        const filtered = clients.filter(f => this.hasString(f.first_name, search) || this.hasString(f.last_name, search));
        
        const content = filtered.length != 0 
                            ? filtered.map( d => {return <ClientHocStyle key={d.id} data={d} />}) 
                            : <div className="info">{clients.length != 0 
                                ? "Oops... There are no users that match your search criteria" 
                                : "Loading..."}</div>
        return {
            content: content,
            searchProps: {
                handleChange: this.handleChange,
                total: clients.length,
                filtered: filtered.length
            }
        }
    }
    
    render() {
        
        const r = this.prepareRender();
        
        return (<div>
                    <Search {...r.searchProps} />
                    { r.content }
                </div>);
    }
}