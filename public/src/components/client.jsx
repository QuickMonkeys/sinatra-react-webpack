import React from 'react';
// Component used to render the client card (see clients.jsx).
export default class Client extends React.Component {

    handleClick(user) {
        alert(`${user.id} - ${user.last_name}`);
    }

    render() {
        let {data} = this.props;
        return (<div onClick={() => this.handleClick(data)}>
                    <div className="photo"><img src={data.photo} /></div>
                    <div className="name">{data.last_name}, {data.first_name}</div>
                    <hr />
                    <div className="email">{data.email}</div>
                </div>);
    }
}