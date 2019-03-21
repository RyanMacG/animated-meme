# Petition

Quickly find out the top signing constituency and top signing non-UK country of any UK Gov Petition.

## Usage

Add the file you want to use locally as `petition.json`

```sh
➜ iex -S mix
PeErlang/OTP 21 [erts-10.2.1] [source] [64-bit] [smp:12:12] [ds:12:12:10] [async-threads:1] [hipe]

Compiling 1 file (.ex)
Interactive Elixir (1.7.4) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Petition.sorted_all
%{
  most_signed_constituency: %{
    "mp" => "Thangam Debbonaire MP",
    "name" => "Bristol West",
    "ons_code" => "E14000602",
    "signature_count" => 4620
  },
  most_signed_country: %{
    "code" => "FR",
    "name" => "France",
    "signature_count" => 5879
  }
}
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `petition` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:petition, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/petition](https://hexdocs.pm/petition).

