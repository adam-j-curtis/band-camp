// import { Router, browserHistory, Route, IndexRoute } from 'react-router';
// import StudentShow from '../containers/StudentShow'
import React from 'react'

export const App = (props) => {
  return (
    <Router onUpdate={() => window.scrollTo(0, 0)} history={browserHistory}>
      <Route path='/user/:id' component={StudentShow}/>
    </Router>
  )
}

export default App
