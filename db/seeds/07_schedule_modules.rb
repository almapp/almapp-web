puts('Creating schedule modules')

# == Schema Information
#
# Table name: schedule_modules
#
#  id              :integer          not null, primary key
#  organization_id :integer          not null
#  initials        :string(255)      not null
#  day             :integer          not null
#  block           :integer          not null
#  start_time      :string(255)      not null
#  end_time        :string(255)      not null
#

@uc = Organization.find_by_abbreviation('UC')

def create_modules(days, blocks, start_times, end_times)
  days.each do |day|
    blocks.each do |block|
      i = block - 1
      d = days.index(day) + 1
      initial = day + ':' + block.to_s

      start_time = start_times[i].split(':')
      end_time = end_times[i].split(':')

      ScheduleModule.create(
          initials: initial,
          day: d,
          block: block,
          start_hour: start_time[0],
          start_minute: start_time[1],
          end_hour: end_time[0],
          end_minute: end_time[1],
          organization: @uc
      )
    end
  end
end

@uc.schedule_modules.destroy_all
create_modules(%w(L M W J V S), [*1..8], %w(8:30 10:00 11:30 14:00 15:30 17:00 18:30 20:00), %w(9:50 11:20 12:50 15:20 16:50 18:20 19:50 21:20))



