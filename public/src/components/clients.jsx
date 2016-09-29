import React from 'react';
import Client from './client.jsx';

import HocStyle from './hocStyle.jsx';

const ClientHocStyle = HocStyle(Client);

export default class Clients extends React.Component {
    
    constructor() {
        super();
        this.state = {clients: []};
    }

    componentDidMount() {
        $.getJSON( "/clients.json", function( result ) {
            this.setState({clients: result});
        }.bind(this));
    }
    
    render() {
        let {clients} = this.state;
        return (<div>
                    {clients.map( d => {return <ClientHocStyle key={d.id} data={d} />})}
                </div>);
    }
}