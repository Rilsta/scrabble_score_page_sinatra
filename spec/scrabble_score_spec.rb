require('rspec')
require('scrabble_score')
require('pry')

describe('String#scrabble') do
  it('returns a scrabble score of 1 appropriate letters') do
    expect('a'.scrabble()).to(eq(1))
    expect('e'.scrabble()).to(eq(1))
    expect('i'.scrabble()).to(eq(1))
    expect('o'.scrabble()).to(eq(1))
    expect('u'.scrabble()).to(eq(1))
    expect('l'.scrabble()).to(eq(1))
    expect('n'.scrabble()).to(eq(1))
    expect('r'.scrabble()).to(eq(1))
    expect('s'.scrabble()).to(eq(1))
    expect('t'.scrabble()).to(eq(1))
  end

  it('returns a scrabble score of 2 appropriate letters') do
    expect('d'.scrabble()).to(eq(2))
    expect('g'.scrabble()).to(eq(2))
  end

  it('returns a scrabble score of 3 appropriate letters') do
    expect('b'.scrabble()).to(eq(3))
    expect('c'.scrabble()).to(eq(3))
    expect('m'.scrabble()).to(eq(3))
    expect('p'.scrabble()).to(eq(3))
  end

  it('returns a scrabble score of 4 appropriate letters') do
    expect('f'.scrabble()).to(eq(4))
    expect('h'.scrabble()).to(eq(4))
    expect('v'.scrabble()).to(eq(4))
    expect('w'.scrabble()).to(eq(4))
    expect('y'.scrabble()).to(eq(4))
  end

  it('returns a scrabble score of 5 appropriate letters') do
    expect('k'.scrabble()).to(eq(5))
  end

  it('returns a scrabble score of 8 appropriate letters') do
    expect('j'.scrabble()).to(eq(8))
    expect('x'.scrabble()).to(eq(8))
  end

  it('returns a scrabble score of 10 appropriate letters') do
    expect('q'.scrabble()).to(eq(10))
    expect('z'.scrabble()).to(eq(10))
  end

  it('adds together letter scores for a word') do
    expect('cat'.scrabble()).to(eq(5))
  end
end
