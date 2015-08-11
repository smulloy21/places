class Place
  define_method(:initialize) do |location|
    @location = location
  end

  define_method(:where) do
    @location
  end
end
