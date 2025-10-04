use_bpm 60

live_loop :pad do
  
  use_synth :dsaw
  p= play_chords =[
    [:A4,:F4,:F4,:C4],
    [:D4,:F4,:C4,:E4],
    [:E5,:G4,:F3,:D2]
  ].choose
  with_fx :reverb, room: 0.89, mix: 0.89 do
    with_fx :lpf, cutoff: 50 do
      play_chords.each do|chord|
        play p , attack_level: 0.75, decay: 0.25, release: 1, amp: 1
        sleep 1
      end
    end
  end
end


live_loop :haunted do
  with_fx :rlpf  ,cutoff: 50 do
    sample :ambi_glass_hum,attack_level: 0.25,decay: 0.75, release: 1, amp: 1
    sleep 2
    sample :ambi_choir,attack_level: 0.25,decay: 0.75, release: 1, amp: 1
    sleep 2
  end
end



live_loop :bd_hans do
  with_fx :rlpf  ,cutoff: 50 do
    3.times do
      sample :bd_haus,attack_level: 0.25,decay: 0.75, release: 1, amp: 2
      sleep 1
    end
    3.times do
      sample :bd_haus,attack_level: 0.25,decay: 0.75, release: 1, amp: 1
      sleep 4
    end
  end
end


live_loop :hihat do
  with_fx :rlpf  ,cutoff: 50 do
    3.times do
      sample :hat_snap,attack_level: 0.25,decay: 0.75, release: 1, amp: 1
      sleep 1
      sample :hat_snap,attack_level: 0.25,decay: 0.75, release: 1, amp: 1
      sleep 2
    end
    4.times do
      sample :hat_snap,attack_level: 0.25,decay: 0.75, release: 1, amp: 1
      sleep 1
      sample :hat_snap,attack_level: 0.25,decay: 0.75, release: 1, amp: 1
      sleep 3
    end
  end
end


live_loop :drums do
  
  use_synth :sc808_snare
  with_fx :rlpf  ,cutoff: 50 do
    
    play_pattern_timed chord(:a4 , :minor7 ), 0.25,attack_level: 0.25,decay: 0.75, release: 1, amp: 1
    sleep 1
    play_pattern_timed chord(:b4, :minor7), 0.25,attack_level: 0.25,decay: 0.75, release: 1, amp: 1
    sleep 2
  end
end


live_loop :bass do
  use_synth :tri
  with_fx :rlpf ,cutoff: 50 do
    play_pattern_timed chord(:c4 , :minor7 ), 0.25,attack_level: 0.25,decay: 0.75, release: 1, amp: 1
    sleep 1
    play_pattern_timed chord(:d4, :minor7), 0.25,attack_level: 0.25,decay: 0.75, release: 1, amp: 1
    sleep 2
  end
end


live_loop :prano do
  use_synth :piano
  with_fx :echo ,mix: 0.89 do
    with_fx :gverb, mix: 0.1 do
      with_fx :lpf , cutoff: 70 do
        1.times do
          play_pattern_timed chord(:c4 , :minor7 ), 0.25,attack_level: 0.25,decay: 0.75, release: 1, amp: 1
          sleep 1
          play_pattern_timed chord(:d4, :minor7), 0.25,attack_level: 0.25,decay: 0.75, release: 1, amp: 1
          sleep 1
        end
        2.times do
          play_pattern_timed chord(:f4 , :minor7 ), 0.25,attack_level: 0.25,decay: 0.75, release: 1, amp: 1
          sleep 1
          play_pattern_timed chord(:c4,  :minor7),0.25,attack_level: 0.25,decay: 0.75, release: 1, amp: 1
          sleep 1
        end
      end
    end
  end
end