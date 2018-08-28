module PointsHelper
  def turning_point(cons)
    ((cons.points.where(release: true).count - 1) / 2).ceil + 1
  end
end
