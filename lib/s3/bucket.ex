defmodule AwsManager.Bucket do
  @moduledoc """
  Work in progress
  """

  def all do
    ExAws.S3.list_buckets()
    |> ExAws.request!()
    |> Map.fetch!(:body)
    |> Map.fetch!(:buckets)
  end

  def names(buckets, name_list \\ []) do
    case buckets do
      [] -> name_list
      [hd|tl] -> names(tl, [bucket_name(hd)|name_list])
    end
  end

  defp bucket_name(bucket) do
    Map.fetch!(bucket, :name)
  end
end
