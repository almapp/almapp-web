class AccountLoader
  def prepare_user(user, password)
    raise NotImplementedError, "Subclasses must define 'prepare_user'."
  end
end