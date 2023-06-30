require 'spec_helper'
require_relative 'mocks'

describe LP do
  describe '#lp!' do
    subject(:hash) { { ace: 'ventura', like: %w[a glove] } }

    it 'outputs plain yaml dump' do
      expect { lp! hash }.to output_approval 'lp-bang'
    end
  end

  describe '#lp' do
    subject :object do
      mike.friends = [randall, sulley]
      randall.friends = { one: mike, two: sulley }
      mike
    end

    let(:mike) { Monsters::Monster.new 'Mike', 'Wazowski' }
    let(:randall) { Monsters::Monster.new 'Randall', 'Boggs' }
    let(:sulley) { Monsters::Monster.new 'James', 'Sullivan', 'P.' }

    it 'outputs colorful yaml dump' do
      expect { lp object }.to output_approval 'lp'
    end
  end

  describe 'lp?' do
    subject(:object) { Monster.new }

    it 'prints the objects methods and instance vars' do
      expect { lp? object }.to output_approval 'lp-what'
    end
  end
end
