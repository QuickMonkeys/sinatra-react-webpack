import React from 'react';
import Client from './client.jsx';
import Search from './search.jsx';

// In this example, the higher order component is used to apply the style in the client card.
import HocStyle from './hocStyle.jsx';
// The result is a client component wraped by the Style component.
const ClientHocStyle = HocStyle(Client);

export default class Clients extends React.Component {
    
    // The initial state is defined in the constructor. 
    // The best place to bind your event handlers is the constructor.
    constructor() {
        super();
        this.state = {clients: [], search: ''};
        this.handleChange = this.handleChange.bind(this);
    }

    // Once the component is mounted, an ajax call is used to load the data from clients.json action in controller.
    componentDidMount() {
        $.getJSON( "/clients/clients.json", function( result ) {
            this.setState({clients: result});
        }.bind(this));
    }

    // A simple function that checks if exists a text in the name.    
    hasString(name, text) {
        return name.toUpperCase().indexOf(text.toUpperCase()) >=0;
    }
    
    handleChange(text) {
        this.setState({search: text});
    }
    
    // Function used to prepare the content that will be rendered by the component
    prepareRender(){
        
        let {clients, search} = this.state;

        const filtered = clients.filter(f => this.hasString(f.first_name, search) || this.hasString(f.last_name, search));
        
        const content = filtered.length != 0 
                            ? filtered.map( d => {return <ClientHocStyle key={d.id} data={d} />}) 
                            : <div className="info">{clients.length != 0 
                                ? "Oops... There are no users that match your search criteria" 
                                : "Loading..."}</div>
        
        // This function returns an object with two properties:
        //  - content: With the clients that will be rendered.
        //  - searchProps: That contains an object with the properties that will be used by the Search component.
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