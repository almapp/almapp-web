puts('Creating schedule modules')

# Table name: schedule_modules
#
#  id         :integer          not null, primary key
#  initials   :string(255)      not null
#  day        :integer          not null
#  block      :integer          not null
#  start_time :string(255)      not null
#  end_time   :string(255)      not null

def create_modules(days, blocks, start_times, end_times)
  days.each do |day|
    blocks.each do |block|
      i = block - 1
      d = days.index(day) + 1
      initial = day + ':' + block.to_s

      ScheduleModule.create(
          initials: initial,
          day: d,
          block: block,
          start_time: start_times[i],
          end_time: end_times[i],
          organization: @uc
      )
    end
  end
end

ScheduleModule.destroy_all
create_modules(%w(L M W J V S), [*1..8], %w(8:30 10:00 11:30 14:00 15:30 17:00 18:30 20:00), %w(9:50 11:20 12:50 15:20 16:50 18:20 19:50 21:20))



