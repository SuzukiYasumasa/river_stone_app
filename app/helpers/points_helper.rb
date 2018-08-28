module PointsHelper
  def turning_point(cons)
    ((cons.points.where(release: true).count - 1) / 2).ceil + 1
  end

  def point_url(lng, lat)
    "https://www.google.co.jp/maps/@#{lat},#{lng},21z?hl=ja"
  end
end
