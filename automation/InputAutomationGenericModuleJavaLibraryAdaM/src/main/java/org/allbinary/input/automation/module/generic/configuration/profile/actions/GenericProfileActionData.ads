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
limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package;
package org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package_References is
   type GenericProfileActionData_Access is access all org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package.GenericProfileActionData'Class;
   type GenericProfileActionData_Access_Array is array (Natural range <>) of GenericProfileActionData_Access;
   type GenericProfileActionData_Access_Array_Access is access all GenericProfileActionData_Access_Array;
   type GenericProfileActionData_Access_Array_Access_Array is array (Natural range <>) of GenericProfileActionData_Access_Array_Access;
   type GenericProfileActionData_Access_Array_Access_Array_Access is access all GenericProfileActionData_Access_Array_Access_Array;
   type GenericProfileActionData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GenericProfileActionData_Access_Array_Access;
   end record;
   function Java_Box (Value : GenericProfileActionData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GenericProfileActionData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GenericProfileActionData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GenericProfileActionData_Access_Array_Access is (if Value /= null and then Value.all in GenericProfileActionData_Access_Array_Object'Class then GenericProfileActionData_Access_Array_Object'Class (Value.all).Value else null);
   type GenericProfileActionData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GenericProfileActionData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GenericProfileActionData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GenericProfileActionData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GenericProfileActionData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GenericProfileActionData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GenericProfileActionData_Access_Array_Access_Array_Object'Class then GenericProfileActionData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package_References;

with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GenericProfileActionData_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package_References.GenericProfileActionData_Access;
   function "=" (Left, Right : GenericProfileActionData_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package_References."=";
   subtype GenericProfileActionData_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package_References.GenericProfileActionData_Access_Array;
   function "=" (Left, Right : GenericProfileActionData_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package_References."=";
   subtype GenericProfileActionData_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package_References.GenericProfileActionData_Access_Array_Access;
   function "=" (Left, Right : GenericProfileActionData_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package_References."=";
   function Java_Box (Value : GenericProfileActionData_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package_References.Java_Box;
   function Java_Unbox_GenericProfileActionData_Access_Array (Value : access Java_Object'Class) return GenericProfileActionData_Access_Array_Access renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package_References.Java_Unbox_GenericProfileActionData_Access_Array;
   subtype GenericProfileActionData_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package_References.GenericProfileActionData_Access_Array_Access_Array;
   function "=" (Left, Right : GenericProfileActionData_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package_References."=";
   subtype GenericProfileActionData_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package_References.GenericProfileActionData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericProfileActionData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package_References."=";
   function Java_Box (Value : GenericProfileActionData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package_References.Java_Box;
   function Java_Unbox_GenericProfileActionData_Access_Array_Access_Array (Value : access Java_Object'Class) return GenericProfileActionData_Access_Array_Access_Array_Access renames org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package_References.Java_Unbox_GenericProfileActionData_Access_Array_Access_Array;

   type GenericProfileActionData is new Java_Object with null record;
   NAME : Unbounded_String;
   SCRIPT : Unbounded_String;

   procedure Initialize (This : in out GenericProfileActionData'Class);
   function Create return GenericProfileActionData_Access;

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package;


