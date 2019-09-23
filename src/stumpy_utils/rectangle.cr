module StumpyCore
  class Canvas

    def rect(x0, y0, x1, y1, color = RGBA::BLACK)
      line(x0, y0, x1, y0, color)
      line(x1, y0, x1, y1, color)
      line(x1, y1, x0, y1, color)
      line(x0, y1, x0, y0, color)
    end

    def fill_rect(x0 : Int32, y0 : Int32, x1 : Int32, y1 : Int32, color = RGBA::BLACK)
      fill_rect(x0.to_f, y0.to_f, x1.to_f, y1.to_f, color)
    end

    def fill_rect(x0, y0, x1, y1, color = RGBA::BLACK)
      vertices = [
        Point.new(x0, y0),
        Point.new(x1, y0),
        Point.new(x1, y1),
        Point.new(x0, y1),
      ]
      fill_polygon(vertices, color)
    end
  end
end