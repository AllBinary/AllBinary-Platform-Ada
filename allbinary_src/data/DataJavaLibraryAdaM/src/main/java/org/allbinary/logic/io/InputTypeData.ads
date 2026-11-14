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
limited with org.allbinary.logic.io.InputTypeData_Package;
package org.allbinary.logic.io.InputTypeData_Package_References is
   type InputTypeData_Access is access all org.allbinary.logic.io.InputTypeData_Package.InputTypeData'Class;
   type InputTypeData_Access_Array is array (Natural range <>) of InputTypeData_Access;
   type InputTypeData_Access_Array_Access is access all InputTypeData_Access_Array;
   type InputTypeData_Access_Array_Access_Array is array (Natural range <>) of InputTypeData_Access_Array_Access;
   type InputTypeData_Access_Array_Access_Array_Access is access all InputTypeData_Access_Array_Access_Array;
   type InputTypeData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputTypeData_Access_Array_Access;
   end record;
   function Java_Box (Value : InputTypeData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputTypeData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputTypeData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputTypeData_Access_Array_Access is (if Value /= null and then Value.all in InputTypeData_Access_Array_Object'Class then InputTypeData_Access_Array_Object'Class (Value.all).Value else null);
   type InputTypeData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputTypeData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputTypeData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputTypeData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputTypeData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputTypeData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputTypeData_Access_Array_Access_Array_Object'Class then InputTypeData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.InputTypeData_Package_References;

with org.allbinary.logic.io.InputTypeData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.io.InputTypeData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype InputTypeData_Access is org.allbinary.logic.io.InputTypeData_Package_References.InputTypeData_Access;
   function "=" (Left, Right : InputTypeData_Access) return Boolean renames org.allbinary.logic.io.InputTypeData_Package_References."=";
   subtype InputTypeData_Access_Array is org.allbinary.logic.io.InputTypeData_Package_References.InputTypeData_Access_Array;
   function "=" (Left, Right : InputTypeData_Access_Array) return Boolean renames org.allbinary.logic.io.InputTypeData_Package_References."=";
   subtype InputTypeData_Access_Array_Access is org.allbinary.logic.io.InputTypeData_Package_References.InputTypeData_Access_Array_Access;
   function "=" (Left, Right : InputTypeData_Access_Array_Access) return Boolean renames org.allbinary.logic.io.InputTypeData_Package_References."=";
   function Java_Box (Value : InputTypeData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.InputTypeData_Package_References.Java_Box;
   function Java_Unbox_InputTypeData_Access_Array (Value : access Java_Object'Class) return InputTypeData_Access_Array_Access renames org.allbinary.logic.io.InputTypeData_Package_References.Java_Unbox_InputTypeData_Access_Array;
   subtype InputTypeData_Access_Array_Access_Array is org.allbinary.logic.io.InputTypeData_Package_References.InputTypeData_Access_Array_Access_Array;
   function "=" (Left, Right : InputTypeData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.InputTypeData_Package_References."=";
   subtype InputTypeData_Access_Array_Access_Array_Access is org.allbinary.logic.io.InputTypeData_Package_References.InputTypeData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputTypeData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.InputTypeData_Package_References."=";
   function Java_Box (Value : InputTypeData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.InputTypeData_Package_References.Java_Box;
   function Java_Unbox_InputTypeData_Access_Array_Access_Array (Value : access Java_Object'Class) return InputTypeData_Access_Array_Access_Array_Access renames org.allbinary.logic.io.InputTypeData_Package_References.Java_Unbox_InputTypeData_Access_Array_Access_Array;

   type InputTypeData is new Java_Object with record
      NAME : Unbounded_String;
   end record;
   instance : InputTypeData_Access;

   procedure Initialize (This : in out InputTypeData'Class);
   function Create return InputTypeData_Access;
   function getInstance return InputTypeData_Access;

end org.allbinary.logic.io.InputTypeData_Package;


