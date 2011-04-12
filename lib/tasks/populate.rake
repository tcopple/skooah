namespace :db do
  desc "erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'

    [User, 
      AuthorProfile, 
      Publication, 
      PublicationComment, 
      PublicationTag, 
      Tag].each do |t|
      t.send(:destroy_all) 
    end

    Tag.populate 30 do |tag|
      tag.text = Populator.words(1).downcase
    end

    User.populate 10 do |user|
      user.email = Faker::Internet.email
      #user.first_name = Faker::Name.first_name
      #user.last_name = Faker::Name.last_name
      #user.website = Faker::Internet.domain_name
    end

    User.populate 10 do |user|
      user.email = Faker::Internet.email
      #user.first_name = Faker::Name.first_name
      #user.last_name = Faker::Name.last_name
      #user.website = Faker::Internet.domain_name

      AuthorProfile.populate 1 do |author|
        author.user_id = user.id
        author.pen_name = Faker::Name.name
        author.biography = Populator.sentences(5..10)

        Publication.populate 2..10 do |publication|
          publication.title = Populator.words(1..5).titleize
          publication.image_url = Faker::Internet.domain_name + "/photo" + rand(1000).to_s
          publication.author_profile_id = author.id
          publication.created_at = 1.year.ago..Time.now
          publication.description = Populator.sentences(5..10)

          PublicationComment.populate 1..5 do |comment|
            comment.commenter_id = (0..10) #doesn't really point to anything yet
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
end
