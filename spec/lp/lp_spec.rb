require 'spec_helper'

describe LP do
  describe '#lp!' do
    subject {{ ace: 'ventura', like: ['a', 'glove'] }}

    it "outputs plain yaml dump" do
      expect{ lp! subject }.to output_approval 'lp-bang'
    end
  end

  describe '#lp' do
    subject do
      module Monsters
        class Monster
          attr_accessor :friends
          def initialize(first, last, middle=nil)
            @first, @last, @middle = first, last, middle
          end
        end
      end

      a = Monsters::Monster.new 'Mike', 'Wazowski'
      b = Monsters::Monster.new 'Randall', 'Boggs'
      c = Monsters::Monster.new 'James', 'Sullivan', 'P.'

      a.friends = [b, c]
      b.friends = {one: a, two: c}

      a
    end

    it "outputs colorful yaml dump" do
      expect{ lp subject }.to output_approval 'lp'
    end
  end

  describe 'lp?' do
    subject do
      class Monster
        attr_accessor :friends, :skills

        def initialize
          @friends = []
          @skills = []
        end

        def eat; end
        def sleep; end
        def scare; end
      end

      Monster.new
      
    end

    it "prints the objects methods and instance vars" do
      expect{ lp? subject }.to output_approval 'lp-what'
    end
  end
end
