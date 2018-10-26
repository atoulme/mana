defmodule MerklePatriciaTree.StorageBehaviour do
  @moduledoc """
  Defines functions for fetching and updating nodes.
  """

  alias MerklePatriciaTree.Trie

  @type t :: struct()

  @callback fetch_node(t) :: ExRLP.t() | :not_found

  @callback put_node(t, node) :: nil | binary()

  @callback remove_key(t, Trie.key()) :: t

  @callback update_key(t(), Trie.key(), ExRLP.t() | nil) :: t

  @callback get_key(t(), Trie.key()) :: t()
end
