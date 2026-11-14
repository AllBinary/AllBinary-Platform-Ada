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
limited with org.allbinary.logic.io.InputOutputTypeData_Package;
package org.allbinary.logic.io.InputOutputTypeData_Package_References is
   type InputOutputTypeData_Access is access all org.allbinary.logic.io.InputOutputTypeData_Package.InputOutputTypeData'Class;
   type InputOutputTypeData_Access_Array is array (Natural range <>) of InputOutputTypeData_Access;
   type InputOutputTypeData_Access_Array_Access is access all InputOutputTypeData_Access_Array;
   type InputOutputTypeData_Access_Array_Access_Array is array (Natural range <>) of InputOutputTypeData_Access_Array_Access;
   type InputOutputTypeData_Access_Array_Access_Array_Access is access all InputOutputTypeData_Access_Array_Access_Array;
   type InputOutputTypeData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputOutputTypeData_Access_Array_Access;
   end record;
   function Java_Box (Value : InputOutputTypeData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputOutputTypeData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputOutputTypeData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputOutputTypeData_Access_Array_Access is (if Value /= null and then Value.all in InputOutputTypeData_Access_Array_Object'Class then InputOutputTypeData_Access_Array_Object'Class (Value.all).Value else null);
   type InputOutputTypeData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputOutputTypeData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputOutputTypeData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputOutputTypeData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputOutputTypeData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputOutputTypeData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputOutputTypeData_Access_Array_Access_Array_Object'Class then InputOutputTypeData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.InputOutputTypeData_Package_References;

with org.allbinary.logic.io.InputOutputTypeData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.io.InputOutputTypeData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype InputOutputTypeData_Access is org.allbinary.logic.io.InputOutputTypeData_Package_References.InputOutputTypeData_Access;
   function "=" (Left, Right : InputOutputTypeData_Access) return Boolean renames org.allbinary.logic.io.InputOutputTypeData_Package_References."=";
   subtype InputOutputTypeData_Access_Array is org.allbinary.logic.io.InputOutputTypeData_Package_References.InputOutputTypeData_Access_Array;
   function "=" (Left, Right : InputOutputTypeData_Access_Array) return Boolean renames org.allbinary.logic.io.InputOutputTypeData_Package_References."=";
   subtype InputOutputTypeData_Access_Array_Access is org.allbinary.logic.io.InputOutputTypeData_Package_References.InputOutputTypeData_Access_Array_Access;
   function "=" (Left, Right : InputOutputTypeData_Access_Array_Access) return Boolean renames org.allbinary.logic.io.InputOutputTypeData_Package_References."=";
   function Java_Box (Value : InputOutputTypeData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.InputOutputTypeData_Package_References.Java_Box;
   function Java_Unbox_InputOutputTypeData_Access_Array (Value : access Java_Object'Class) return InputOutputTypeData_Access_Array_Access renames org.allbinary.logic.io.InputOutputTypeData_Package_References.Java_Unbox_InputOutputTypeData_Access_Array;
   subtype InputOutputTypeData_Access_Array_Access_Array is org.allbinary.logic.io.InputOutputTypeData_Package_References.InputOutputTypeData_Access_Array_Access_Array;
   function "=" (Left, Right : InputOutputTypeData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.InputOutputTypeData_Package_References."=";
   subtype InputOutputTypeData_Access_Array_Access_Array_Access is org.allbinary.logic.io.InputOutputTypeData_Package_References.InputOutputTypeData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputOutputTypeData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.InputOutputTypeData_Package_References."=";
   function Java_Box (Value : InputOutputTypeData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.InputOutputTypeData_Package_References.Java_Box;
   function Java_Unbox_InputOutputTypeData_Access_Array_Access_Array (Value : access Java_Object'Class) return InputOutputTypeData_Access_Array_Access_Array_Access renames org.allbinary.logic.io.InputOutputTypeData_Package_References.Java_Unbox_InputOutputTypeData_Access_Array_Access_Array;

   type InputOutputTypeData is new Java_Object with record
      NAME : Unbounded_String;
      FILE : Unbounded_String;
      RESPONSE : Unbounded_String;
      DB : Unbounded_String;
      JSP : Unbounded_String;
      JSP_FRAGMENT : Unbounded_String;
      PHP : Unbounded_String;
      ASP : Unbounded_String;
      PL : Unbounded_String;
      DEFAULT : Unbounded_String;
      DEFAULT_FRAGMENT : Unbounded_String;
   end record;
   instance : InputOutputTypeData_Access;

   procedure Initialize (This : in out InputOutputTypeData'Class);
   function Create return InputOutputTypeData_Access;
   function getInstance return InputOutputTypeData_Access;

end org.allbinary.logic.io.InputOutputTypeData_Package;


