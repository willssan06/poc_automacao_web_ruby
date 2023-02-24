require 'report_builder'
require 'date'

at_exit do
  time = Time.now.to_s
  ReportBuilder.configure do |config|
    config.json_path = 'report/relatorio.json'
    config.report_path = 'report/relatorio'
    config.report_types = [:html]
    config.report_title = 'Cucumber Report Builder - Automated Testing '
    config.compress_images = false
    config.color = 'indigo'
    config.additional_info = { 'Project name' => 'Team ', 'Platform' => 'web', 'Report generated' => time }
  end
  ReportBuilder.build_report
end

