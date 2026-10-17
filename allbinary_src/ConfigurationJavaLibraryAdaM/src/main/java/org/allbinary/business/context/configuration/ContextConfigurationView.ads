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
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationData_Package; use org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationData_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationView_Package; use org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationView_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package; use org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;
with org.allbinary.business.context.configuration.ContextConfiguration_Package; use org.allbinary.business.context.configuration.ContextConfiguration_Package;
with org.allbinary.business.context.configuration.ContextConfigurationData_Package; use org.allbinary.business.context.configuration.ContextConfigurationData_Package;

package org.allbinary.business.context.configuration.ContextConfigurationView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package EmailServerConfigurationData_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationData_Package;
   package EmailServerConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
   package EmailServerConfigurationView_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationView_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;

   type ContextConfigurationView is tagged;
   type ContextConfigurationView_Access is access all ContextConfigurationView'Class;
   type ContextConfigurationView_Access_Array is array (Natural range <>) of ContextConfigurationView_Access;
   type ContextConfigurationView_Access_Array_Access is access all ContextConfigurationView_Access_Array;

   type ContextConfigurationView is new DomNodeInterface with record
      contextConfigurationInterface : ContextConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out ContextConfigurationView'Class; node_Param : access Node'Class);
   function Create (node_Param : access Node'Class) return ContextConfigurationView_Access;
   procedure Initialize (This : in out ContextConfigurationView'Class; contextConfigurationInterface_Param : access ContextConfigurationInterface'Class);
   function Create (contextConfigurationInterface_Param : access ContextConfigurationInterface'Class) return ContextConfigurationView_Access;
   function getContextConfigurationInterface (This : in out ContextConfigurationView) return ContextConfigurationInterface_Access;
   function toXmlNode (This : in out ContextConfigurationView; document_Param : access Document'Class) return Node_Access;
   procedure toXmlNode (This : in out ContextConfigurationView; document_Param : access Document'Class);

end org.allbinary.business.context.configuration.ContextConfigurationView_Package;


