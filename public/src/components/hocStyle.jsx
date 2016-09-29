import React from 'react';
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