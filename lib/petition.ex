defmodule Petition do
  def sorted_all do
    %{ most_signed_constituency: List.first(sorted_constituencies()), most_signed_country: Enum.at(sorted_countries(), 1)}
  end

  def sorted_constituencies do
    get_json() |> constituencies_from_json |> sorted_by_signature_count
  end

  def sorted_countries do
    get_json() |> countries_from_json |> sorted_by_signature_count
  end

  defp get_json do
    'petition.json' |> File.read! |> Poison.decode!
  end

  defp constituencies_from_json(json) do
    json["data"]["attributes"]["signatures_by_constituency"]
  end

  defp countries_from_json(json) do
    json["data"]["attributes"]["signatures_by_country"]
  end

  defp sorted_by_signature_count(data) do
    Enum.sort data, & &1["signature_count"] >= &2["signature_count"]
  end
end
