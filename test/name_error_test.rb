class TestNameError < Minitest::Test

  def setup
    Vago::NameError.root_path = "../test/fixture/"
  end

  def test_test
    begin
      c = Klass.new
      assert(c.is_true?)
    rescue NameError => e
      Vago::NameError.send(:exception, e)
      retry
    end
  end

end
