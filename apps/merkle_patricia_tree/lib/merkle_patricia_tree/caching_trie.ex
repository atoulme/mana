defmodule MerklePatriciaTree.CachingTrie do
  @behaviour EVM.AccountRepo

  defstruct [
    :in_memory_trie,
    :trie
  ]

  @type t :: %__MODULE__{
          in_memory_trie: Trie.t(),
          trie: Trie.t()
        }
end
