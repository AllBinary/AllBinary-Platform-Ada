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

limited with org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package;
package org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package_References is
   type UserConfigurationInterfaceFactory_Access is access all org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package.UserConfigurationInterfaceFactory'Class;
   type UserConfigurationInterfaceFactory_Access_Array is array (Natural range <>) of UserConfigurationInterfaceFactory_Access;
   type UserConfigurationInterfaceFactory_Access_Array_Access is access all UserConfigurationInterfaceFactory_Access_Array;
   type UserConfigurationInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of UserConfigurationInterfaceFactory_Access_Array_Access;
   type UserConfigurationInterfaceFactory_Access_Array_Access_Array_Access is access all UserConfigurationInterfaceFactory_Access_Array_Access_Array;
end org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package_References;

with org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.business.user.role.UserRole_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References;

package org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package is

   package UserRole_Package renames Standard.org.allbinary.business.user.role.UserRole_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Reference_Types is
   subtype UserRole_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access;
   use type UserRole_Access;
   subtype UserRole_Access_Array is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array;
   use type UserRole_Access_Array;
   subtype UserRole_Access_Array_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access;
   use type UserRole_Access_Array_Access;
   subtype UserRole_Access_Array_Access_Array is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access_Array;
   use type UserRole_Access_Array_Access_Array;
   subtype UserRole_Access_Array_Access_Array_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access_Array_Access;
   use type UserRole_Access_Array_Access_Array_Access;
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   subtype UserConfigurationInterface_Access is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access;
   use type UserConfigurationInterface_Access;
   subtype UserConfigurationInterface_Access_Array is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array;
   use type UserConfigurationInterface_Access_Array;
   subtype UserConfigurationInterface_Access_Array_Access is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array_Access;
   use type UserConfigurationInterface_Access_Array_Access;
   subtype UserConfigurationInterface_Access_Array_Access_Array is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array_Access_Array;
   use type UserConfigurationInterface_Access_Array_Access_Array;
   subtype UserConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array_Access_Array_Access;
   use type UserConfigurationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype UserConfigurationInterfaceFactory_Access is org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package_References.UserConfigurationInterfaceFactory_Access;
   function "=" (Left, Right : UserConfigurationInterfaceFactory_Access) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package_References."=";
   subtype UserConfigurationInterfaceFactory_Access_Array is org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package_References.UserConfigurationInterfaceFactory_Access_Array;
   function "=" (Left, Right : UserConfigurationInterfaceFactory_Access_Array) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package_References."=";
   subtype UserConfigurationInterfaceFactory_Access_Array_Access is org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package_References.UserConfigurationInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : UserConfigurationInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package_References."=";
   subtype UserConfigurationInterfaceFactory_Access_Array_Access_Array is org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package_References.UserConfigurationInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : UserConfigurationInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package_References."=";
   subtype UserConfigurationInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package_References.UserConfigurationInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserConfigurationInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package_References."=";

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


