require 'game' 

describe Game do 
    subject { Game.new("Rob", "Rhys") }

    it 'should switch turns' do 
        subject.attack
        expect(subject.player1.is_playing).to eq false
    end

    it 'should switch turns twice' do 
        subject.attack
        subject.attack
        expect(subject.player1.is_playing).to eq true
    end

    it 'should end the game' do 
        18.times { subject.attack }
        expect(subject.attack).to eq "Rob has won the game"
    end
end