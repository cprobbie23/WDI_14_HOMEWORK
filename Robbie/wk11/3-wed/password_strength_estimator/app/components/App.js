import React from 'react'
import PasswordInput from './PasswordInput'

export default class App extends React.Component {

  constructor(props) {
    super(props)
  }

  render() {
    return <div>
      <h1>Password Strenght Estimator</h1>
      <label>test your password here</label>
      <PasswordInput />
    </div>
  }

}
