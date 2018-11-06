import React, { Component } from 'react'

class StudentShow extends Component {
  constructor(props){
    super(props)
    this.state = {
      student: []
    }
  }

  componentDidMount(){
    let studentId = this.props.params.id
    fetch(`/api/v1/users/${studentId}`)
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
      this.setState({ student: body.student})
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    let oneStudent = this.state.student.map(student => {
      return(
        <StudentTile
          id = {user.id}
          key = {user.id}
          name = {user.full_name}
          />
      )
    })

    return (
      <div className="text-center student-show">
        <h1>{this.state.student}</h1>
      </div>
    )
  }
}

export default StudentShow
