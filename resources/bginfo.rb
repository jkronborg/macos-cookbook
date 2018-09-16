default_interface = node['network']['default_interface']
ip4_address = node['network']['interfaces'][default_interface]['addresses'].detect { |_k, v| v[:family] == 'inet' }.first
serial_number = node['serial_number']
os_version = node['platform_version']
os_build = node['platform_build']
mac_address = node['macaddress']

machine_name = node['machinename']
hardware = node['hardware']
model_name = hardware['machine_name']
model_id = hardware['machine_model']
cpu_info = node['cpu']['model_name']
memory = hardware['physical_memory']
boot_rom_version = hardware['boot_rom_version']
smc_version = hardware['SMC_version_system']

xcode_version = Xcode::Version.apple
mono_version = node['languages']['mono']['version']

# puts "#{model_name} #{model_id} #{cpu_info} #{memory}"
# puts "#{ip_address} #{mac_address} #{serial_number}"

# convert -verbose -background "$(bg_color)" -fill ivory2 -interline-spacing 15 -size "$display_resolution" -gravity center -pointsize "$bg_pointsize" caption:"$(background_text)" "$__dir/image.gif"

# top_padding=$(round "$display_height*0.07" 0)
# header_pointsize=$(round "$bg_pointsize*1.875" 0)
# header_2_padding=$((top_padding + header_pointsize + 5))
# header_3_padding=$((header_2_padding + header_pointsize + 5))

# convert "$__dir/image.gif" -verbose -font Helvetica -pointsize "$header_pointsize" -draw \
# "gravity north fill ivory2 text 0,$top_padding '$computer_name' \
# fill ivory2 text 0,$header_2_padding '$os_version' \
# fill ivory2 text 0,$header_3_padding '$checked_out_to'" "$__dir/final_bg.gif"

# rm "$__dir/image.gif"