##
# The Sample sevices let you list, create, update, and delete Samples from our application.
# @url /sample
#
class SampleController

  ##
  # Retuns all samples, as XML, for the current user that match the given parameters.
  # 
  # @url
  # [GET] /samples/index.[format]?[arguments]
  # 
  # @argument [String] format Only "xml" is support at this time.
  # @argument [String] name The name of the sample
  # @argument [String] reource The resource that sample belongs to
  # @argument ["@assigned"|"@complete"|"!@complete"] search Return jobs that are assigned, complete, or
  #   uncomplete.
  # 
  # @example_response
  #   <samples type="array">
  #     <sample>
  #       <id>961</id>
  #       <name>My Sample</name>
  #       <state>complete</state>
  #       <last_unassigned_user_id type="integer"></last_unassigned_user_id>
  #       <resource_id type="integer">127</resource_id>
  #       <notes></notes>
  #       <updated_at type="datetime">2010-03-09T20:43:29Z</updated_at>
  #       <created_at type="datetime">2010-03-09T20:43:16Z</created_at>
  #     </interval>
  #   <intervals>
  # 
  # @response_field id A unique ID identifying the Sample
  # @response_field name The name of the sample
  # @response_field state The current status of the Sample. Can be complete, uncomplete, etc.
  # @response_field notes Any notes given for the sample
  # @response_field updated_at The Date/Time (in ISO8601) that the Sample was last updated
  # @response_field created_at The Date/Time (in ISO8601) that the Sample was created
  # 
  def index
  end

  ##
  #
  # Shouldn't be included
  def show
  end

  ##
  # Creates a new Sample
  # @url [POST] /new
  # @url [POST] /really_new
  # 
  def create
  end

end

##
# This one shouldn't show.
#
class BogusController
end

module First
  module Second
    
    ##
    # Third level deep namespace class
    # @url /otherpath/third
    #
    class Third
      
      ##
      # Does action!
      # @url [PUT] /otherpath/third/action
      # 
      def action
      end
      
    end

  end
end