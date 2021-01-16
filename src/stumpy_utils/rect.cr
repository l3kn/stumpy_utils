
module StumpyCore
  class Canvas
    def rect(x0, y0, x1, y1, stroke = RGBA::BLACK, fill = RGBA::BLACK)
      # Fill
      {x0, x1}.min.upto({x0, x1}.max) do |x|
        {y0, y1}.min.upto({y0, y1}.max) do |y|
          safe_set(x, y, fill)
        end
      end

      # Stroke
      line(x0, y0, x0, y1, stroke)
      line(x0, y1, x1, y1, stroke)
      line(x1, y1, x1, y0, stroke)
      line(x1, y0, x0, y0, stroke)
    end
  end
end
