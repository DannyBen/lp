require 'spec_helper'
require_relative 'mocks'

describe LP do
  describe '#lp!' do
    subject { { ace: 'ventura', like: %w[a glove] } }

    it 'outputs plain yaml dump' do
      expect { lp! subject }.to output_approval 'lp-bang'
    end
  end

  describe '#lp' do
    subject do
      monster1.friends = [monster2, monster3]
      monster2.friends = { one: monster1, two: monster3 }
      monster1
    end

    let(:monster1) { Monsters::Monster.new 'Mike', 'Wazowski' }
    let(:monster2) { Monsters::Monster.new 'Randall', 'Boggs' }
    let(:monster3) { Monsters::Monster.new 'James', 'Sullivan', 'P.' }

    it 'outputs colorful yaml dump' do
      expect { lp subject }.to output_approval 'lp'
    end
  end

  describe 'lp?' do
    subject { Monster.new }

    it 'prints the objects methods and instance vars' do
      expect { lp? subject }.to output_approval 'lp-what'
    end
  end
end
