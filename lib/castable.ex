defprotocol Castable do
  @spec cast(t, map() | String.t) :: t
  def cast(to, from)
end
