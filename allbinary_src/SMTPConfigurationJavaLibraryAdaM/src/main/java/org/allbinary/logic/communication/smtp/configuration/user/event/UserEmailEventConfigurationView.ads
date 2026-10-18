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
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package;

package org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type UserEmailEventConfigurationView is tagged;
   type UserEmailEventConfigurationView_Access is access all UserEmailEventConfigurationView'Class;
   type UserEmailEventConfigurationView_Access_Array is array (Natural range <>) of UserEmailEventConfigurationView_Access;
   type UserEmailEventConfigurationView_Access_Array_Access is access all UserEmailEventConfigurationView_Access_Array;
   type UserEmailEventConfigurationView_Access_Array_Access_Array is array (Natural range <>) of UserEmailEventConfigurationView_Access_Array_Access;
   type UserEmailEventConfigurationView_Access_Array_Access_Array_Access is access all UserEmailEventConfigurationView_Access_Array_Access_Array;

   type UserEmailEventConfigurationView is new Java_Object and DomNodeInterface with record
      userEmailEventConfigurationInterface : UserEmailEventConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out UserEmailEventConfigurationView'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return UserEmailEventConfigurationView_Access;
   procedure Initialize (This : in out UserEmailEventConfigurationView'Class; userEmailEventConfigurationInterface_Param : access UserEmailEventConfigurationInterface_Package.UserEmailEventConfigurationInterface'Class);
   function Create (userEmailEventConfigurationInterface_Param : access UserEmailEventConfigurationInterface_Package.UserEmailEventConfigurationInterface'Class) return UserEmailEventConfigurationView_Access;
   function toXmlNode (This : in out UserEmailEventConfigurationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out UserEmailEventConfigurationView; document_Param : access Document_Package.Document'Class);
   function getUserEmailEventConfigurationInterface (This : in out UserEmailEventConfigurationView) return UserEmailEventConfigurationInterface_Access;
   procedure setUserEmailEventConfigurationInterface (This : in out UserEmailEventConfigurationView; userEmailEventConfigurationInterface_Param : access UserEmailEventConfigurationInterface_Package.UserEmailEventConfigurationInterface'Class);

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationView_Package;


