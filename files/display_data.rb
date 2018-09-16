Ohai.plugin :DisplayData do
  provides 'harware/display/resolution'
  provides 'harware/display/pixels'

  collect_data :default do
    hardware(Mash.new)
    sp_display_data_command = shell_out 'system_profiler -xml SPDisplaysDataType'
    displays_data = Plist.parse_xml sp_display_data_command.stdout

    displays_data.first['_items'].each do |display|
      ndrvs = display['spdisplays_ndrvs'].first
      hardware[:display][:pixels] = ndrvs['_spdisplays_resoution']
      hardware[:display][:resolution] = ndrvs['_spdisplays_pixels']
    end
  end
end
