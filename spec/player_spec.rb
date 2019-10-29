require 'player'

describe Player do 
    subject { Player.new("Ronald") }
    # let(:fake_player) { double :Player, name: "Derek"}

    it 'should have a name when initialised' do
        expect(subject.name).to eq "Ronald"
    end

    it 'should have a 100 hit points when initialised' do
        expect(subject.hit_points).to eq 100
    end

    it 'should confirm that the attack move has been done' do
        player2 = Player.new("Derek")
        expect(subject.attack(player2)).to eq true 
    end

    it 'should damage player2 when attacked' do
        player2 = Player.new("Derek")
        expect{ subject.attack(player2) }.to change{ player2.hit_points }.by(-10)
    end

    it 'should damage player2 when attacked' do
        player2 = Player.new("Derek")
        player2.attack(subject)
        expect(subject.hit_points).to eq 90
    end

    it 'should give me a message when I get hit' do 
        expect(subject.damage).to eq "You have been hit"
    end
end