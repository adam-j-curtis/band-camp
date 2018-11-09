// import { Router, browserHistory, Route, IndexRoute } from 'react-router';
// import StudentShow from '../containers/StudentShow'
import React, { Component } from 'react'
// import RecorderJs from '../containers/RecorderJs'
// import Recorder from 'recorder-js';




class StudentShow extends Component {
  constructor(props){
    super(props)
    this.state = {
      student: {},
      instrumentSections: [],
      assignments: []
    }
  }

  componentDidMount(){
    let studentId = this.props.params.id
    console.log(`${this.props.params.id}`)

    fetch(`/api/v1/students/${studentId}`)
    .then(response => {
      if (response.ok) {
        return response;

      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
        error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {
      console.log(body);
      this.setState({ student: body.user})
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){



    // let oneStudent = this.state.student.map(student => {
    //   return(
    //     <div>
    //       <p>React Starts Here!</p>
    //       <StudentTile
    //         id = {user.id}
    //         key = {user.id}
    //         name = {user.full_name}
    //       />
    //     </div>
    //   )
    // })

    // - StudentShow should have all of the assignments for a student stowed in state
    // - In the render, iterate over this.state.assignments to generate assignment tiles
    // - Each assignment tile should have a link to an assignment show page
    // - On the assignment show page, we have the option of recording music for a specific assignment


    return (
      <div className="text-center student-show">
        <h1>{this.state.student.first_name} {this.state.student.last_name}</h1>
        <h2>Your section(s): </h2>
        <h2>This week's assignment(s): </h2>
      </div>
    )
  }
}

export default StudentShow
