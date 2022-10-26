require '../book'

describe Book do
  context 'When testing the book class' do
    it 'should return publisher when we call the publisher method' do
      test_book = Book.new('IguanaBooks', 'good', '2020-10-20')
      publisher = test_book.publisher
      expect(publisher).to eq 'IguanaBooks'
    end

    it 'should return the cover state when we call the cover_state method' do
      test_book = Book.new('IguanaBooks', 'good', '2020-10-20')
      cover_state = test_book.cover_state
      expect(cover_state).to eq 'good'
    end

    it 'should return true when we call the can_be_archived method' do
      test_book = Book.new('IguanaBooks', 'bad', '2020-10-20')
      result = test_book.can_be_archived?
      expect(result).to eq true
    end
  end
end
