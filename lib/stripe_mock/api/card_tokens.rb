module StripeMock

  def self.generate_card_token(card_params, prefix = 'tok', global_prefix = StripeMock.global_id_prefix)
    if @state == 'local'
      instance.generate_card_token(card_params, prefix, global_prefix)
    elsif @state == 'remote'
      client.generate_card_token(card_params, prefix, global_prefix)
    else
      raise UnstartedStateError
    end
  end

end
