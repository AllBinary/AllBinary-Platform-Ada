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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationData_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationData_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationView_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationView_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package; use org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationMapping_Package; use org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationMapping_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package; use org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package;

package org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package UserEmailEventsConfigurationData_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationData_Package;
   package UserEmailEventsConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package;
   package UserEmailEventsConfigurationView_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationView_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;

   type UserEmailConfigurationView is tagged;
   type UserEmailConfigurationView_Access is access all UserEmailConfigurationView'Class;
   type UserEmailConfigurationView_Access_Array is array (Natural range <>) of UserEmailConfigurationView_Access;
   type UserEmailConfigurationView_Access_Array_Access is access all UserEmailConfigurationView_Access_Array;

   type UserEmailConfigurationView is new DomNodeInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      userEmailConfigurationInterface : UserEmailConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out UserEmailConfigurationView'Class; node_Param : access Node'Class);
   function Create (node_Param : access Node'Class) return UserEmailConfigurationView_Access;
   procedure Initialize (This : in out UserEmailConfigurationView'Class; userEmailConfigurationInterface_Param : access UserEmailConfigurationInterface'Class);
   function Create (userEmailConfigurationInterface_Param : access UserEmailConfigurationInterface'Class) return UserEmailConfigurationView_Access;
   function getEmailConfigurationInterface (This : in out UserEmailConfigurationView) return UserEmailConfigurationInterface_Access;
   function toXmlNode (This : in out UserEmailConfigurationView; document_Param : access Document'Class) return Node_Access;
   procedure toXmlNode (This : in out UserEmailConfigurationView; document_Param : access Document'Class);

end org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package;


