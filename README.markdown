Yardoc RESTful Web Service Plugin
=================================
by VisFleet

A plugin for [Yardoc](http://yardoc.org/) that generates documentation for RESTful web services. 

Install
-------
    sudo gem install yardoc

Generating Docs
---------------
When using yardoc you ask it to use the "rest" template (the -t option). For example: 

    yardoc '*.rb' -t rest --title "Our App's API"

Writing Comments
----------------
In addition to starting your comment with the normal RDoc description. The following tags are provided:

- @url url. Specifies the URL that the service is accessed from. This tag is compulsory, only classes and methods 
    that include this in their comments are included

- @argument [type] name description. Specifies an argument that is passed to the service. You can specify as 
    many of these as required

- @example_response example. An example of the response that is returned from the service

- @response_field name description. Further specifies the fields that are returned within the response

For example:

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

Development
-----------
You can run the template locally over the included sample code by using the following rake tasks:
    
    rake ex:clean
    rake ex:generate


