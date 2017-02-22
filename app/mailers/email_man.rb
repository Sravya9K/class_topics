class EmailMan < ActionMailer::Base
  default from: "from@example.com"
  
  def admin_alert(book)
	  @id = book.id
	  @name=book.name
	  @author = book.author
	  mail(:to=>"sravyaecm@gmail.com",:subject=>"ALERT : New book added")
	  #attachments['filename.jpg'] = File.read('/path/to/filename.jpg)
	  end
end
