defprotocol Castable do
  @spec cast(t, map() | String.t, term()) :: t
  def cast(to, from, opts \\ nil)
end
