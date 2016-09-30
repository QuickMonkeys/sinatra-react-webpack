import React from 'react';
// In this example, the HOC defines which style will be used on the client component
export default ComposedComponent => class extends React.Component {
    render() {
        let {data} = this.props;
        return (
            <div className="col-md-4">
                <div className={data.gender == 'M' ? 'card male' : 'card female'}>
                    <ComposedComponent  {...this.props} />
                </div>
            </div>
        );
    }    
}