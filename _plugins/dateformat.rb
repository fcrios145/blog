module DateFilter
  MONTHS = %w(Enero Febrero Marzo Abril Mayo Junio Julio Agosto Septiembre Octubre Noviembre Diciembre)

  def spanish_long_month(input)
    input.strftime("%C") + " de " + MONTHS[input.strftime("%m").to_i - 1] + " del " + input.strftime("%Y")
  end
end

Liquid::Template.register_filter(DateFilter)
