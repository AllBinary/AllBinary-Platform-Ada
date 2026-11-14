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
limited with org.allbinary.string_Id.CommonStateStrings_Package;
package org.allbinary.string_Id.CommonStateStrings_Package_References is
   type CommonStateStrings_Access is access all org.allbinary.string_Id.CommonStateStrings_Package.CommonStateStrings'Class;
   type CommonStateStrings_Access_Array is array (Natural range <>) of CommonStateStrings_Access;
   type CommonStateStrings_Access_Array_Access is access all CommonStateStrings_Access_Array;
   type CommonStateStrings_Access_Array_Access_Array is array (Natural range <>) of CommonStateStrings_Access_Array_Access;
   type CommonStateStrings_Access_Array_Access_Array_Access is access all CommonStateStrings_Access_Array_Access_Array;
   type CommonStateStrings_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CommonStateStrings_Access_Array_Access;
   end record;
   function Java_Box (Value : CommonStateStrings_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CommonStateStrings_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CommonStateStrings_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CommonStateStrings_Access_Array_Access is (if Value /= null and then Value.all in CommonStateStrings_Access_Array_Object'Class then CommonStateStrings_Access_Array_Object'Class (Value.all).Value else null);
   type CommonStateStrings_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CommonStateStrings_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CommonStateStrings_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CommonStateStrings_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CommonStateStrings_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CommonStateStrings_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CommonStateStrings_Access_Array_Access_Array_Object'Class then CommonStateStrings_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.string_Id.CommonStateStrings_Package_References;

with org.allbinary.string_Id.CommonStateStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.string_Id.CommonStateStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CommonStateStrings_Access is org.allbinary.string_Id.CommonStateStrings_Package_References.CommonStateStrings_Access;
   function "=" (Left, Right : CommonStateStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStateStrings_Package_References."=";
   subtype CommonStateStrings_Access_Array is org.allbinary.string_Id.CommonStateStrings_Package_References.CommonStateStrings_Access_Array;
   function "=" (Left, Right : CommonStateStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStateStrings_Package_References."=";
   subtype CommonStateStrings_Access_Array_Access is org.allbinary.string_Id.CommonStateStrings_Package_References.CommonStateStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStateStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStateStrings_Package_References."=";
   function Java_Box (Value : CommonStateStrings_Access_Array_Access) return Java_Object_Access renames org.allbinary.string_Id.CommonStateStrings_Package_References.Java_Box;
   function Java_Unbox_CommonStateStrings_Access_Array (Value : access Java_Object'Class) return CommonStateStrings_Access_Array_Access renames org.allbinary.string_Id.CommonStateStrings_Package_References.Java_Unbox_CommonStateStrings_Access_Array;
   subtype CommonStateStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStateStrings_Package_References.CommonStateStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStateStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStateStrings_Package_References."=";
   subtype CommonStateStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStateStrings_Package_References.CommonStateStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStateStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStateStrings_Package_References."=";
   function Java_Box (Value : CommonStateStrings_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.string_Id.CommonStateStrings_Package_References.Java_Box;
   function Java_Unbox_CommonStateStrings_Access_Array_Access_Array (Value : access Java_Object'Class) return CommonStateStrings_Access_Array_Access_Array_Access renames org.allbinary.string_Id.CommonStateStrings_Package_References.Java_Unbox_CommonStateStrings_Access_Array_Access_Array;

   type CommonStateStrings is new Java_Object with record
      CONTEXT : Unbounded_String;
      FINISH : Unbounded_String;
      CREATE : Unbounded_String;
      START : Unbounded_String;
      RESTART : Unbounded_String;
      RESUME : Unbounded_String;
      PAUSE : Unbounded_String;
      STOP : Unbounded_String;
      DESTROY : Unbounded_String;
      BIND : Unbounded_String;
      ON_SAVE_INSTANCE_STATE : Unbounded_String;
      ON_START_COMMAND : Unbounded_String;
   end record;
   instance : CommonStateStrings_Access;

   procedure Initialize (This : in out CommonStateStrings'Class);
   function Create return CommonStateStrings_Access;
   function getInstance return CommonStateStrings_Access;

end org.allbinary.string_Id.CommonStateStrings_Package;


