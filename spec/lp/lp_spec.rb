require 'spec_helper'

describe LP do
  describe '#lp' do
    let(:something) {{ ace: 'ventura', like: ['a', 'glove'] }}

    it "works" do
      expected = "---\n:ace: ventura\n:like:\n- a\n- glove\n"
      expect{ lp something }.to output(expected).to_stdout
    end
  end
end
