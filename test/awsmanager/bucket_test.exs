defmodule AwsManager.BucketTest do
  use ExUnit.Case
  alias AwsManager.Bucket

  # %{creation_date: "2014-04-15T00:21:15.000Z", name: "test-transcoding-in"}
  test "fetch names when empty" do
    assert Bucket.names([]) == []
  end

  test "fetch a single name" do
    example = [%{creation_date: "2014-04-15T00:21:15.000Z", name: "testbucket"}]
    assert Bucket.names(example) == ["testbucket"]
  end

  test "fetch multiple names" do
    examples = [%{creation_date: "2014-04-15T00:21:15.000Z", name: "somethingbucket"},
                %{creation_date: "2014-04-15T00:21:15.000Z", name: "nothingbucket"}]
    assert Bucket.names(examples) == ["nothingbucket","somethingbucket"]
  end
end
