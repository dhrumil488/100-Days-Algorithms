# move all disks from source to dest using aux
def tower_of_hanoi(n, left, right, middle)
    if n > 0
      # shift top n-1 disks from left tower to middle tower using right tower
      tower_of_hanoi(n-1, left, middle, right)
      # shift disk from left tower to right tower and print
      puts left + "=>" + right
      # shift all n-1 disks from middle tower to right tower using left tower
      tower_of_hanoi(n-1, middle, right, left)
    end
end


puts "Please enter the number of disks:"
no_of_disks = gets.chomp

n = no_of_disks.to_i

left = "left"
right = "right"
middle = "middle"

tower_of_hanoi(n, left, right, middle)
