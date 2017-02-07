require 'robot_arm'
robot_arm:load_level('exercise 10')
robot_arm.speed = .9

for i=1, 5, 1 do
  robot_arm:grab()
  for j=0, 10-(i*2), 1 do
    robot_arm:move_right()
  end
  robot_arm:drop()
  for j=0, 9-(i*2), 1 do
    robot_arm:move_left()
  end
end


