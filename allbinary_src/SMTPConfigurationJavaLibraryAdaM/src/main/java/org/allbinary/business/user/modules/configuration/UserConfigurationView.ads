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
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.time.created.TimeCreatedView_Package; use org.allbinary.business.time.created.TimeCreatedView_Package;
with org.allbinary.business.time.modified.TimeLastModifiedView_Package; use org.allbinary.business.time.modified.TimeLastModifiedView_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package; use org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package; use org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package; use org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;
with org.allbinary.business.user.modules.configuration.UserConfiguration_Package; use org.allbinary.business.user.modules.configuration.UserConfiguration_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationData_Package; use org.allbinary.business.user.modules.configuration.UserConfigurationData_Package;

package org.allbinary.business.user.modules.configuration.UserConfigurationView_Package is

   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package TimeCreatedView_Package renames Standard.org.allbinary.business.time.created.TimeCreatedView_Package;
   package TimeLastModifiedView_Package renames Standard.org.allbinary.business.time.modified.TimeLastModifiedView_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package UserEmailConfigurationData_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package;
   package UserEmailConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;
   package UserEmailConfigurationView_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;

   type UserConfigurationView is tagged;
   type UserConfigurationView_Access is access all UserConfigurationView'Class;
   type UserConfigurationView_Access_Array is array (Natural range <>) of UserConfigurationView_Access;
   type UserConfigurationView_Access_Array_Access is access all UserConfigurationView_Access_Array;

   type UserConfigurationView is new DomNodeInterface with record
      userConfigurationInterface : UserConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out UserConfigurationView'Class; node_Param : access Node'Class);
   function Create (node_Param : access Node'Class) return UserConfigurationView_Access;
   procedure Initialize (This : in out UserConfigurationView'Class; userConfigurationInterface_Param : access UserConfigurationInterface'Class);
   function Create (userConfigurationInterface_Param : access UserConfigurationInterface'Class) return UserConfigurationView_Access;
   function getUserConfigurationInterface (This : in out UserConfigurationView) return UserConfigurationInterface_Access;
   function toXmlNode (This : in out UserConfigurationView; document_Param : access Document'Class) return Node_Access;
   procedure toXmlNode (This : in out UserConfigurationView; document_Param : access Document'Class);

end org.allbinary.business.user.modules.configuration.UserConfigurationView_Package;


