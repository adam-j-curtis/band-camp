import React from 'react'
import { Router, browserHistory, Route, IndexRoute } from 'react-router';

import StudentShow from '../containers/StudentShow'

export const App = (props) => {
  return (
    <Router onUpdate={() => window.scrollTo(0, 0)} history={browserHistory}>
      <Route path='/users/:id' component={StudentShow}/>
    </Router>
  )
}

export default App
