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
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package;

package org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type UserEmailEventsConfigurationView is tagged;
   type UserEmailEventsConfigurationView_Access is access all UserEmailEventsConfigurationView'Class;
   type UserEmailEventsConfigurationView_Access_Array is array (Natural range <>) of UserEmailEventsConfigurationView_Access;
   type UserEmailEventsConfigurationView_Access_Array_Access is access all UserEmailEventsConfigurationView_Access_Array;
   type UserEmailEventsConfigurationView_Access_Array_Access_Array is array (Natural range <>) of UserEmailEventsConfigurationView_Access_Array_Access;
   type UserEmailEventsConfigurationView_Access_Array_Access_Array_Access is access all UserEmailEventsConfigurationView_Access_Array_Access_Array;

   type UserEmailEventsConfigurationView is new Java_Object and DomNodeInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      userEmailEventsConfigurationInterface : UserEmailEventsConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out UserEmailEventsConfigurationView'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return UserEmailEventsConfigurationView_Access;
   procedure Initialize (This : in out UserEmailEventsConfigurationView'Class; userEmailEventsConfigurationInterface_Param : access UserEmailEventsConfigurationInterface_Package.UserEmailEventsConfigurationInterface'Class);
   function Create (userEmailEventsConfigurationInterface_Param : access UserEmailEventsConfigurationInterface_Package.UserEmailEventsConfigurationInterface'Class) return UserEmailEventsConfigurationView_Access;
   function getUserEmailEventsConfigurationInterface (This : in out UserEmailEventsConfigurationView) return UserEmailEventsConfigurationInterface_Access;
   function toXmlNode (This : in out UserEmailEventsConfigurationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out UserEmailEventsConfigurationView; document_Param : access Document_Package.Document'Class);

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationView_Package;


