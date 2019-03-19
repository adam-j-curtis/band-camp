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
      instrumentSections: null,
      assignments: []
    }
  }

  componentDidMount(){
    let studentId = this.props.params.id

    fetch(`/api/v1/users/${studentId}`)
    .then(response => {
      if (response.ok) {
        return response;

      } else {
        let errorMessage = `${response.status} (${response.statusText})`;
        error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {
      const instrumentsArray = body.user.instrument_sections.map(section =>
        section.instrument);

      // const sections = [];
      // for(let i = 0; i < body.user.instrument_sections.length; i++){
      //   sections.push(body.user.instrument_sections[i].instrument);
      // };
      const assignmentsArray = body.user.assignments.map(assignment =>
        assignment.name);
      // const pairs = [];
      // const assigns = [];
      // for(let i = 0; i < body.user.assignments.length; i++){
      //   pairs[i] = `${body.user.assignments[i].name} : ${body.user.assignments[i].description}`;
      //   assigns.push(pairs[i]);
      // };
      this.setState({ student: body.user, instrumentSections: instrumentsArray, assignments: assignmentsArray })
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

    const noBand = "You are not part of a band yet.  Please make sure that your \
      instructor adds you to the right band through Ensemble.";
    let instrumentList;
    if (this.state.instrumentSections) {
      // trips when the fetch is done, state changes from null
      if (this.state.instrumentSections.length == 0) {
        instrumentList = noBand;
      } else {
        instrumentList = this.state.instrumentSections.map((instrument)=>{
          return <li>{instrument}</li>;
        });
      }
    }

    // let instrumentList = this.state.instrumentSections.map((instrument)=>{
    //   return <li>{instrument}</li>;
    // });

    // if (this.state.instrumentSections.length == 0) {
    //   let instrumentList = noBand;
    // }

    const noAssignment = "You have no assignments, but don't let that stop you from practicing\!";
    let assignmentList;
    if (this.state.assignments) {
      // trips when the fetch is done, state changes from null
      if (this.state.assignments.length == 0) {
        assignmentList = noAssignment;
      } else {
        assignmentList = this.state.assignments.map((assignment)=>{
          return <li>{assignment}</li>;
        });
      }
    }
    // const assignmentList = this.state.assignments.map((assignment)=>{
    //   return <li>{assignment}</li>;
    // });
    // assignmentList.length > 0 ? assignmentList : noAssignment;

    return (
      <div className="text-center student-show">
        <h1>{this.state.student.first_name} {this.state.student.last_name}</h1>
        <h3>Your section(s):</h3>
          <ul>{instrumentList}</ul>
        <h3>This week's assignment(s):</h3>
          <ul>{assignmentList}</ul>
      </div>
    )
  }
}

export default StudentShow
