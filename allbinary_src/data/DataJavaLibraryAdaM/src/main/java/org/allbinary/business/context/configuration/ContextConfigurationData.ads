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
limited with org.allbinary.business.context.configuration.ContextConfigurationData_Package;
package org.allbinary.business.context.configuration.ContextConfigurationData_Package_References is
   type ContextConfigurationData_Access is access all org.allbinary.business.context.configuration.ContextConfigurationData_Package.ContextConfigurationData'Class;
   type ContextConfigurationData_Access_Array is array (Natural range <>) of ContextConfigurationData_Access;
   type ContextConfigurationData_Access_Array_Access is access all ContextConfigurationData_Access_Array;
   type ContextConfigurationData_Access_Array_Access_Array is array (Natural range <>) of ContextConfigurationData_Access_Array_Access;
   type ContextConfigurationData_Access_Array_Access_Array_Access is access all ContextConfigurationData_Access_Array_Access_Array;
   type ContextConfigurationData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ContextConfigurationData_Access_Array_Access;
   end record;
   function Java_Box (Value : ContextConfigurationData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ContextConfigurationData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ContextConfigurationData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ContextConfigurationData_Access_Array_Access is (if Value /= null and then Value.all in ContextConfigurationData_Access_Array_Object'Class then ContextConfigurationData_Access_Array_Object'Class (Value.all).Value else null);
   type ContextConfigurationData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ContextConfigurationData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ContextConfigurationData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ContextConfigurationData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ContextConfigurationData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ContextConfigurationData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ContextConfigurationData_Access_Array_Access_Array_Object'Class then ContextConfigurationData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.context.configuration.ContextConfigurationData_Package_References;

with org.allbinary.business.context.configuration.ContextConfigurationData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.context.configuration.ContextConfigurationData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ContextConfigurationData_Access is org.allbinary.business.context.configuration.ContextConfigurationData_Package_References.ContextConfigurationData_Access;
   function "=" (Left, Right : ContextConfigurationData_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationData_Package_References."=";
   subtype ContextConfigurationData_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationData_Package_References.ContextConfigurationData_Access_Array;
   function "=" (Left, Right : ContextConfigurationData_Access_Array) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationData_Package_References."=";
   subtype ContextConfigurationData_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationData_Package_References.ContextConfigurationData_Access_Array_Access;
   function "=" (Left, Right : ContextConfigurationData_Access_Array_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationData_Package_References."=";
   function Java_Box (Value : ContextConfigurationData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.configuration.ContextConfigurationData_Package_References.Java_Box;
   function Java_Unbox_ContextConfigurationData_Access_Array (Value : access Java_Object'Class) return ContextConfigurationData_Access_Array_Access renames org.allbinary.business.context.configuration.ContextConfigurationData_Package_References.Java_Unbox_ContextConfigurationData_Access_Array;
   subtype ContextConfigurationData_Access_Array_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationData_Package_References.ContextConfigurationData_Access_Array_Access_Array;
   function "=" (Left, Right : ContextConfigurationData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationData_Package_References."=";
   subtype ContextConfigurationData_Access_Array_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationData_Package_References.ContextConfigurationData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ContextConfigurationData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationData_Package_References."=";
   function Java_Box (Value : ContextConfigurationData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.configuration.ContextConfigurationData_Package_References.Java_Box;
   function Java_Unbox_ContextConfigurationData_Access_Array_Access_Array (Value : access Java_Object'Class) return ContextConfigurationData_Access_Array_Access_Array_Access renames org.allbinary.business.context.configuration.ContextConfigurationData_Package_References.Java_Unbox_ContextConfigurationData_Access_Array_Access_Array;

   type ContextConfigurationData is new Java_Object with record
      NAME : Unbounded_String;
      UNCRYPTED_EXTENSION : Unbounded_String;
      ENCRYPTED_EXTENSION : Unbounded_String;
   end record;
   instance : ContextConfigurationData_Access;

   procedure Initialize (This : in out ContextConfigurationData'Class);
   function Create return ContextConfigurationData_Access;
   function getInstance return ContextConfigurationData_Access;

end org.allbinary.business.context.configuration.ContextConfigurationData_Package;


