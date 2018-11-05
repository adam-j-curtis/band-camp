// import { Router, browserHistory, Route, IndexRoute } from 'react-router';
// import StudentShow from '../containers/StudentShow'
import React from 'react'
import AudioRecorder from 'react-audio-recorder';

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
        console.log(`response okay`)
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
        error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    console.log(`json respond`)
    .then(body => {
      this.setState({ student: body.student})
      console.log(this.state.student);
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){

    let oneStudent = this.state.student.map(student => {
      return(
        <div>
          <p>React Starts Here!</p>
          <StudentTile
            id = {user.id}
            key = {user.id}
            name = {user.full_name}
          />
        </div>
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

// export const StudentShow = (props) => {
//   return (
//     <div>React Starts Here!</div>
//   )
// }
//
// export default StudentShow
