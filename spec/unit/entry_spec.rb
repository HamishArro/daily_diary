require './lib/entry'

describe Entry do

  describe '#add' do

    it 'can add entries'do
      result = Entry.add(title: 'Title', body: 'Body')
      expect(result.title).to eq 'Title'
      expect(result.body).to eq 'Body'
    end

  end

end
