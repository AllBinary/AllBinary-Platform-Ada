--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package; use org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;

package org.allbinary.business.context.configuration.ContextConfigurationView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type ContextConfigurationView is tagged;
   type ContextConfigurationView_Access is access all ContextConfigurationView'Class;
   type ContextConfigurationView_Access_Array is array (Natural range <>) of ContextConfigurationView_Access;
   type ContextConfigurationView_Access_Array_Access is access all ContextConfigurationView_Access_Array;
   type ContextConfigurationView_Access_Array_Access_Array is array (Natural range <>) of ContextConfigurationView_Access_Array_Access;
   type ContextConfigurationView_Access_Array_Access_Array_Access is access all ContextConfigurationView_Access_Array_Access_Array;

   type ContextConfigurationView is new Java_Object and DomNodeInterface with record
      contextConfigurationInterface : ContextConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out ContextConfigurationView'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return ContextConfigurationView_Access;
   procedure Initialize (This : in out ContextConfigurationView'Class; contextConfigurationInterface_Param : access ContextConfigurationInterface_Package.ContextConfigurationInterface'Class);
   function Create (contextConfigurationInterface_Param : access ContextConfigurationInterface_Package.ContextConfigurationInterface'Class) return ContextConfigurationView_Access;
   function getContextConfigurationInterface (This : in out ContextConfigurationView) return ContextConfigurationInterface_Access;
   function toXmlNode (This : in out ContextConfigurationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out ContextConfigurationView; document_Param : access Document_Package.Document'Class);

end org.allbinary.business.context.configuration.ContextConfigurationView_Package;


