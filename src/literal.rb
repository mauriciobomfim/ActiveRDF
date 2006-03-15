# = literal.rb
#
# Class definition of Literal object. Wrap value and type of a RDF literal attribute.
#
# == Project
#
# * ActiveRDF
# <http://m3pe.org/activerdf/>
#
# == Authors
# 
# * Eyal Oren <first dot last at deri dot org>
# * Renaud Delbru <first dot last at deri dot org>
#
# == Copyright
#
# (c) 2005-2006 by Eyal Oren and Renaud Delbru - All Rights Reserved
#
# == To-do
#
# * To-do 1
#

require 'node'

class Literal; implements Node

	# Value of the literal
	attr_accessor :value
		
	# Type of the literal
	attr_accessor :type
				
	def initialize(value, type)
		self.value = value
		self.type = type
	end
	
#----------------------------------------------#
#               PUBLIC METHODS                 #
#----------------------------------------------#
	
	public
	
  # Create a new Literal.
  # Determine the type of the value.
  #
  # Arguments:
  # * +value+: Value of the Literal
  #
  # Return:
  # * [<tt>Literal</tt>] The new Literal node
	def self.create(value)
		type = determine_type(value)
		return NodeFactory.create_literal(value.to_s, type)
	end
	
#----------------------------------------------#
#               PRIVATE METHODS                #
#----------------------------------------------#

 	private
  
  # Determine the value type of the literal.
  #
  # Arguments:
  # * +value+: Value of the Literal
  #
  # Return:
  # * [<tt>String</tt>] Value type
	def self.determine_type(value)
		return 'Literal type is not yet implemented.'
	end
	
end

