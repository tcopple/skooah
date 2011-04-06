namespace :db do
  desc "erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'

    [Author, Publication, PublicationComment, PublicationTag, Tag].each do |t|
      t.send(:destroy_all) 
    end

    Tag.populate 30 do |tag|
      tag.text = Populator.words(1).downcase
    end

    Author.populate 15 do |author|
      author.pen_name = Faker::Name.name

      Publication.populate 2..10 do |publication|
        publication.title = Populator.words(1..5).titleize
        publication.image_url = Faker::Internet.domain_name + "/photo" + rand(1000).to_s
        publication.author_id = author.id
        publication.created_at = 1.year.ago..Time.now

        PublicationComment.populate 1..5 do |comment|
          comment.commenter_id = (1..15) #doesn't really point to anything yet
          comment.comment = Populator.sentences(2..10)
          comment.created_at = 1.year.ago..Time.now
          comment.publication_id = publication.id 
        end

        PublicationTag.populate 1..5 do |pubtag|
          pubtag.publication_id = publication.id
          pubtag.tag_id = (1..30) 
        end
      end
    end

  end
end
