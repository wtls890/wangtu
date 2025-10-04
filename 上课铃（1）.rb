use_bpm 80
live_loop :piano do
  
  use_synth :piano
  with_fx :reverb,room: 0.89,mix: 0.89 do
    with_fx :echo ,mix: 0.89 do
      with_fx :lpf ,cutoff:100 do
        
        play_pattern_timed [:A4,:F4,:F4,:C4],[1] ,amp: 2,decay: 0.75,attack_level: 0.25,release: 1
        sleep 1
        play_pattern_timed [:D4,:F4,:C4,:E5],[1] ,amp: 2,decay: 0.75,attack_level: 0.25,release: 1
        sleep 1
        play_pattern_timed [:E4,:G4,:F5,:D4],[1] ,amp: 2,decay: 0.75,attack_level: 0.25,release: 1
        sleep 1
      end
    end
  end
end

live_loop :pad do
  use_synth :dsaw
  play_chords =[
    [:A4,:F4,:F4,:C4],
    [:D4,:F4,:C4,:E5],
    [:E4,:G4,:F5,:D4]
  ]
  with_fx :reverb, room: 0.89, mix: 0.89 do
    with_fx :lpf ,cutoff:70 do
      play_chords.each do|chord|
        play chord, attack_level: 0.75, decay: 0.25, release: 1, amp: 1
        sleep 4
      end
    end
  end
end

live_loop :haunted do
  with_fx :lpf ,cutoff:120 do
    
    sample :perc_bell,attack_level: 0.25,decay: 0.75, release: 1, amp: 1
    sleep 2
  end
end
