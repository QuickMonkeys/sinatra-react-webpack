import React from 'react';

export default class Client extends React.Component {

    render() {
        let {data} = this.props;
        return (<div>
                    <div className="photo"><img src={data.photo} /></div>
                    <div className="name">{data.last_name}, {data.first_name}</div>
                    <hr />
                    <div className="email">{data.email}</div>
                </div>);
    }
}