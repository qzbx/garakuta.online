namespace :forget do
	desc "forget statuses"
	task forget: :environment do
		arr = File.open('/home/ubuntu/live/scripts/slist.txt').readlines
		for i in arr do
			RemovalWorker.perform_async(i)
		end
	end
end
