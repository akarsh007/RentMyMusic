import React from 'react';
//import ReactDOM from 'react-dom';
import axios from 'axios';

var NewItem= React.createClass({
    render(){
        return (
            <div>
                <br/><br/><br/>
                <input ref='name' placeholder='Enter the name of the item' />
                <input ref='immediate_parent_list' placeholder='Enter immediate parents' />
                <button onClick={this.handleClick}>Submit</button>
            </div>
        )},
    handleClick() {
        var name = this.refs.name.value;
        var immediate_parents = [this.refs.immediate_parent_list.value];
        var immediate_parent_list = JSON.parse("[" + immediate_parents + "]");
        axios({
            method: 'post',
            url: 'http://localhost:4000/categories.json',
            processData: false,
            contentType: false,
            data:  { category: { name: name, immediate_parent_list: immediate_parent_list } }
        }).then(function (response) {
            if (response.data.status == 500){
                alert ("some error occured")
            }
            else if (response.data.status == 200){
                alert("category created")
            }

        });

    },

});
export default NewItem;