defprotocol Castable do
  @spec cast(t, term(), term()) :: t
  def cast(to, from, opts \\ nil)
end
