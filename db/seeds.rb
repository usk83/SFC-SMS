AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
ActiveNight.create!([
  {user_id: 1, allnight_id: 1},
  {user_id: 1, allnight_id: 2}
])
ActiveTime.create!([
  {user_id: 1, shift_time_id: 8},
  {user_id: 1, shift_time_id: 7},
  {user_id: 1, shift_time_id: 8},
  {user_id: 1, shift_time_id: 3},
  {user_id: 1, shift_time_id: 2}
])
Affiliation.create!([
  {user_id: 1, committee_id: 2}
])
Allnight.create!([
  {date: "2016-10-10"},
  {date: "2016-10-11"},
  {date: "2016-10-12"}
])
Committee.create!([
  {name: "七夕祭実行委員会"},
  {name: "秋祭実行委員会"}
])
DesiredTask.create!([
  {user_id: 1, task_id: 4}
])
DriverLicense.create!([
  {license_type: "MT"},
  {license_type: "AT限定"},
  {license_type: "自信なし"},
  {license_type: "なし"}
])
ExperienceTask.create!([
  {user_id: 1, task_id: 6},
  {user_id: 1, task_id: 8},
  {user_id: 1, task_id: 10}
])
ShiftDate.create!([
  {date: "2016-10-10"},
  {date: "2016-10-11"},
  {date: "2016-10-12"}
])
ShiftTime.create!([
  {shift_time: "2000-01-01 06:00:00", shift_date_id: 3},
  {shift_time: "2000-01-01 12:00:00", shift_date_id: 3},
  {shift_time: "2000-01-01 18:00:00", shift_date_id: 2},
  {shift_time: "2000-01-01 06:00:00", shift_date_id: 2},
  {shift_time: "2000-01-01 12:00:00", shift_date_id: 2},
  {shift_time: "2000-01-01 18:00:00", shift_date_id: 1},
  {shift_time: "2000-01-01 06:00:00", shift_date_id: 1},
  {shift_time: "2000-01-01 12:00:00", shift_date_id: 1}
])
Station.create!([
  {name: "七夕祭 事務局", committee_id: 1},
  {name: "七夕祭 企画局", committee_id: 1},
  {name: "七夕祭 装飾局", committee_id: 1},
  {name: "七夕祭 渉外局", committee_id: 1},
  {name: "七夕祭 広報局", committee_id: 1},
  {name: "七夕祭 電力隊", committee_id: 1},
  {name: "秋祭 運営局", committee_id: 2},
  {name: "秋祭 企画局", committee_id: 2},
  {name: "秋祭 装飾局", committee_id: 2},
  {name: "秋祭 渉外局", committee_id: 2},
  {name: "秋祭 広報局", committee_id: 2},
  {name: "秋祭 意匠局", committee_id: 2},
  {name: "秋祭 電力隊", committee_id: 2}
])
Task.create!([
  {name: "電力配線", station_id: 13, detailed_name: nil, comment: nil},
  {name: "パンフ印刷", station_id: 12, detailed_name: nil, comment: nil},
  {name: "チラシ配り", station_id: 11, detailed_name: nil, comment: nil},
  {name: "受付", station_id: 10, detailed_name: nil, comment: nil},
  {name: "装飾配置", station_id: 9, detailed_name: nil, comment: nil},
  {name: "縁日", station_id: 8, detailed_name: nil, comment: nil},
  {name: "ステージ", station_id: 7, detailed_name: nil, comment: nil},
  {name: "最終集積", station_id: 1, detailed_name: nil, comment: nil},
  {name: "見回り", station_id: 2, detailed_name: nil, comment: nil},
  {name: "花火ゴミ拾い", station_id: 1, detailed_name: nil, comment: nil},
  {name: "秋祭 web担当", station_id: 12, detailed_name: nil, comment: nil}
])
TaskShift.create!([
  {task_id: 7, shift_time_id: 5, min_num: 1, max_num: 3},
  {task_id: 7, shift_time_id: 4, min_num: 1, max_num: 3},
  {task_id: 7, shift_time_id: 3, min_num: 1, max_num: 3},
  {task_id: 6, shift_time_id: 4, min_num: 1, max_num: 2},
  {task_id: 2, shift_time_id: 2, min_num: 1, max_num: 3},
  {task_id: 1, shift_time_id: 1, min_num: 2, max_num: 3}
])
UserShift.create!([
  {user_id: 1, task_shift_id: 2},
  {user_id: 1, task_shift_id: 4},
  {user_id: 1, task_shift_id: 1},
  {user_id: 1, task_shift_id: 7},
  {user_id: 1, task_shift_id: 2},
  {user_id: 2, task_shift_id: 2}
])
UserStation.create!([
  {user_id: 1, station_id: 7},
  {user_id: 1, station_id: 10},
  {user_id: 1, station_id: 12}
])
UserTask.create!([
  {user_id: 2, task_id: 7},
  {user_id: 1, task_id: 7},
  {user_id: 1, task_id: 11}
])
