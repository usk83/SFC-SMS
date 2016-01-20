class TaskShiftsController < InheritedResources::Base

  private

    def task_shift_params
      params.require(:task_shift).permit(:task_id, :shift_time_id, :min_num, :max_num)
    end
end

