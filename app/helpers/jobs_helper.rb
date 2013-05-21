module JobsHelper
  def jobs_available?
    if @jobs.length > 0
      true
    else
      false
    end
  end
end
