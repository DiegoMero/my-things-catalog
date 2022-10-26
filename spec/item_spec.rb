require '../item'

describe Item do
  context 'When testing the item class' do
    it 'should return the publish date class when calling the publish_date method' do
      item_test = Item.new('2020-10-20')
      publish_date = item_test.publish_date
      expect(publish_date.class).to eq Date
    end

    it 'should return false when calling the can_be_archived? method' do
      item_test = Item.new('2020-10-20')
      result = item_test.can_be_archived?
      expect(result).to eq false
    end

    it 'should return false when callig the move_to_archive? method' do
      item_test = Item.new('2020-10-20')
      archived = item_test.archived
      item_test.move_to_archive
      expect(archived).to eq false
    end
  end
end
