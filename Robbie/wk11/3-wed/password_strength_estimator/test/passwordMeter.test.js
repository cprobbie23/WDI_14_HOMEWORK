var expect = require('chai').expect
var getStrength = require('../lib/passwordMeter') 

describe('passwordMeter', () => {
  it('should return weak by default', () => {
    expect(getStrength('')).to.be.equal('weak')
  })
  it('should return less weak', () => {
    expect(getStrength('a')).to.be.equal('better')
  })
  it('should return quite good', () => {
    expect(getStrength('1s')).to.be.equal('good')
  })
  it('should return good', () => {
    expect(getStrength('J@1')).to.be.equal('nice')
  })
  it('should return strong', () => {
    expect(getStrength('mK[4')).to.be.equal('strong')
  })
  it('should return strong', () => {
    expect(getStrength('j2fko13[D')).to.be.equal('solid')
  })
})