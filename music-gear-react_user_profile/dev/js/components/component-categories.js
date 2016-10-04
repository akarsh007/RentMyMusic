import React from 'react';
import ReactDOM from 'react-dom';
import axios from 'axios';
//import MultiSelectField from "./Contributers"
import NewItem from "./component-new-category"
import { Router, Route, hashHistory } from 'react-router'
import { Link } from 'react-router'

var Categories=React.createClass({
    getInitialState: function() {
        return {
            rows: []
        };
    },
    componentDidMount: function() {
        axios.get("http://localhost:7000/categories")
            .then((response)=> {
                this.setState({
                    data: 'Initial data...',
                    rows: response.data
                });
            })

    },
    updateState(e) {
        this.setState({data: 'Data updated from child...'});
    },

    getParentList: function() {
        axios.post("http://localhost:7000/categories/generate_parent_list.json")
            .then(function (response) {
                alert("parent list updated");
                location.reload();
            })
    },


    componentWillUnmount: function() {
        this.serverRequest.abort();
    },
    setAddItemFalg: function(){
        return(<div>
            <NewItem/>
        </div> )
    },
    render:function (){
        return (
            <div>
                <h1>Category List</h1>
                <div>
                    <button onClick={this.getParentList}>Generate Parents List</button>
                    <h3><Link to="/new_category">Add Category</Link></h3>
                </div>
                <br/>

                <table>
                    <tbody>
                    {this.state.rows.map((instrument, i) => <TableRow key={i} data={instrument} />)}
                    </tbody>
                </table>

            </div>
        );
    }
});
class TableRow extends React.Component {
    render() {
        return (

            <tr>
                <td>{this.props.data.id}</td>
                <td>{this.props.data.name}</td>
                <td>{this.props.data.immediate_parent_name_list.join(',')}</td>
                <td>{this.props.data.parent_name_list.join(',')}</td>
            </tr>
        );
    }
}
export default Categories;
