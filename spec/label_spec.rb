require '../label'
require '../item'

describe Label do
  context 'When testing the label class' do
    it 'should return title when we call the title method' do
      test_label = Label.new('Marimar', 'Blue')
      title = test_label.title
      expect(title).to eq 'Marimar'
    end

    it 'should return color when we call the color method' do
      test_label = Label.new('Marimar', 'Blue')
      color = test_label.color
      expect(color).to eq 'Blue'
    end

    it 'should return the items length when we call the add_item method' do
      test_label = Label.new('Marimar', 'Blue')
      test_item = Item.new('2020-10-20')
      test_label.add_item(test_item)
      result = test_label.items.length
      expect(result).to eq 1
    end
  end
end
