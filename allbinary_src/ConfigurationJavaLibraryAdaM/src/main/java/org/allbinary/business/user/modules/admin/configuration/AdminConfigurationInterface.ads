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

with AllBinary_Java;
limited with org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package;
package org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package_References is
   type AdminConfigurationInterface_Access is access all org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package.AdminConfigurationInterface'Class;
   type AdminConfigurationInterface_Access_Array is array (Natural range <>) of AdminConfigurationInterface_Access;
   type AdminConfigurationInterface_Access_Array_Access is access all AdminConfigurationInterface_Access_Array;
   type AdminConfigurationInterface_Access_Array_Access_Array is array (Natural range <>) of AdminConfigurationInterface_Access_Array_Access;
   type AdminConfigurationInterface_Access_Array_Access_Array_Access is access all AdminConfigurationInterface_Access_Array_Access_Array;
   type AdminConfigurationInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdminConfigurationInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : AdminConfigurationInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdminConfigurationInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdminConfigurationInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdminConfigurationInterface_Access_Array_Access is (if Value /= null and then Value.all in AdminConfigurationInterface_Access_Array_Object'Class then AdminConfigurationInterface_Access_Array_Object'Class (Value.all).Value else null);
   type AdminConfigurationInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdminConfigurationInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AdminConfigurationInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdminConfigurationInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdminConfigurationInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdminConfigurationInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AdminConfigurationInterface_Access_Array_Access_Array_Object'Class then AdminConfigurationInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package_References;

with org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;
with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References;

package org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package is

   package ContextConfigurationInterface_Package renames Standard.org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;
   package Reference_Types is
   subtype ContextConfigurationInterface_Access is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access;
   use type ContextConfigurationInterface_Access;
   subtype ContextConfigurationInterface_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array;
   use type ContextConfigurationInterface_Access_Array;
   subtype ContextConfigurationInterface_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array_Access;
   use type ContextConfigurationInterface_Access_Array_Access;
   subtype ContextConfigurationInterface_Access_Array_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array_Access_Array;
   use type ContextConfigurationInterface_Access_Array_Access_Array;
   subtype ContextConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array_Access_Array_Access;
   use type ContextConfigurationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type AdminConfigurationInterface is interface;
   subtype AdminConfigurationInterface_Access is org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package_References.AdminConfigurationInterface_Access;
   function "=" (Left, Right : AdminConfigurationInterface_Access) return Boolean renames org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package_References."=";
   subtype AdminConfigurationInterface_Access_Array is org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package_References.AdminConfigurationInterface_Access_Array;
   function "=" (Left, Right : AdminConfigurationInterface_Access_Array) return Boolean renames org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package_References."=";
   subtype AdminConfigurationInterface_Access_Array_Access is org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package_References.AdminConfigurationInterface_Access_Array_Access;
   function "=" (Left, Right : AdminConfigurationInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package_References."=";
   function Java_Box (Value : AdminConfigurationInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package_References.Java_Box;
   function Java_Unbox_AdminConfigurationInterface_Access_Array (Value : access Java_Object'Class) return AdminConfigurationInterface_Access_Array_Access renames org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package_References.Java_Unbox_AdminConfigurationInterface_Access_Array;
   subtype AdminConfigurationInterface_Access_Array_Access_Array is org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package_References.AdminConfigurationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AdminConfigurationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package_References."=";
   subtype AdminConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package_References.AdminConfigurationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdminConfigurationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package_References."=";
   function Java_Box (Value : AdminConfigurationInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package_References.Java_Box;
   function Java_Unbox_AdminConfigurationInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return AdminConfigurationInterface_Access_Array_Access_Array_Access renames org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package_References.Java_Unbox_AdminConfigurationInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_AdminConfigurationInterface (Value : AdminConfigurationInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure write (This : in out AdminConfigurationInterface) is abstract;
   function getContextConfigurationInterface (This : in out AdminConfigurationInterface) return ContextConfigurationInterface_Access is abstract;
   procedure setContextConfigurationInterface (This : in out AdminConfigurationInterface; contextConfigurationInterface_Param : access ContextConfigurationInterface_Package.ContextConfigurationInterface'Class) is abstract;

end org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package;


