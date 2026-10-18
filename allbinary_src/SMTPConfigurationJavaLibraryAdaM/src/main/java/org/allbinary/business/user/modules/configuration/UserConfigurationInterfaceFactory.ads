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
with org.allbinary.business.user.role.UserRole_Package; use org.allbinary.business.user.role.UserRole_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package; use org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;

package org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package is

   package UserRole_Package renames Standard.org.allbinary.business.user.role.UserRole_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type UserConfigurationInterfaceFactory is tagged;
   type UserConfigurationInterfaceFactory_Access is access all UserConfigurationInterfaceFactory'Class;
   type UserConfigurationInterfaceFactory_Access_Array is array (Natural range <>) of UserConfigurationInterfaceFactory_Access;
   type UserConfigurationInterfaceFactory_Access_Array_Access is access all UserConfigurationInterfaceFactory_Access_Array;
   type UserConfigurationInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of UserConfigurationInterfaceFactory_Access_Array_Access;
   type UserConfigurationInterfaceFactory_Access_Array_Access_Array_Access is access all UserConfigurationInterfaceFactory_Access_Array_Access_Array;

   type UserConfigurationInterfaceFactory is new Java_Object with null record;
   configurationName : Unbounded_String;

   procedure Initialize (This : in out UserConfigurationInterfaceFactory'Class);
   function Create return UserConfigurationInterfaceFactory_Access;
   function getInstance (document_Param : access Document_Package.Document'Class) return UserConfigurationInterface_Access;
   procedure getInstance (document_Param : access Document_Package.Document'Class);
   function getInstance (userRole_Param : access UserRole_Package.UserRole'Class) return UserConfigurationInterface_Access;
   procedure getInstance (userRole_Param : access UserRole_Package.UserRole'Class);
   function getInstance return UserConfigurationInterface_Access;

end org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package;


