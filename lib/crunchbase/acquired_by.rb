# encoding: utf-8

# http://api.crunchbase.com/v/2/organization/facebook/acquisitions

module Crunchbase
  class AcquiredBy < CBEntity
    RESOURCE_NAME = 'acquired_by'
    RESOURCE_LIST = 'acquired_by'

    attr_reader :announced_on, :type, :name, :path, :created_at, :updated_at 

    def initialize(json)
      @type_name              = json['type']
      properties              = json['properties']
      relationships           = json['relationships']

      @announced_on             = properties['announced_on'] && DateTime.parse(properties['announced_on'])
      @type                     = properties['type']
      @name                     = properties['name']
      @path                     = properties['path']
      @created_at               = Time.at(properties['created_at']).utc
      @updated_at               = Time.at(properties['updated_at']).utc
    end

end
