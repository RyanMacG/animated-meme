defmodule PetitionTest do
  use ExUnit.Case
  doctest Petition

  test "greets the world" do
    assert Petition.hello() == :world
  end
end
