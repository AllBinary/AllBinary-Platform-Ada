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
limited with org.allbinary.input.automation.robot.TempInputRobotNames_Package;
package org.allbinary.input.automation.robot.TempInputRobotNames_Package_References is
   type TempInputRobotNames_Access is access all org.allbinary.input.automation.robot.TempInputRobotNames_Package.TempInputRobotNames'Class;
   type TempInputRobotNames_Access_Array is array (Natural range <>) of TempInputRobotNames_Access;
   type TempInputRobotNames_Access_Array_Access is access all TempInputRobotNames_Access_Array;
   type TempInputRobotNames_Access_Array_Access_Array is array (Natural range <>) of TempInputRobotNames_Access_Array_Access;
   type TempInputRobotNames_Access_Array_Access_Array_Access is access all TempInputRobotNames_Access_Array_Access_Array;
   type TempInputRobotNames_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TempInputRobotNames_Access_Array_Access;
   end record;
   function Java_Box (Value : TempInputRobotNames_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TempInputRobotNames_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TempInputRobotNames_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TempInputRobotNames_Access_Array_Access is (if Value /= null and then Value.all in TempInputRobotNames_Access_Array_Object'Class then TempInputRobotNames_Access_Array_Object'Class (Value.all).Value else null);
   type TempInputRobotNames_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TempInputRobotNames_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TempInputRobotNames_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TempInputRobotNames_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TempInputRobotNames_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TempInputRobotNames_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TempInputRobotNames_Access_Array_Access_Array_Object'Class then TempInputRobotNames_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.robot.TempInputRobotNames_Package_References;

with org.allbinary.input.automation.robot.TempInputRobotNames_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.automation.robot.TempInputRobotNames_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TempInputRobotNames_Access is org.allbinary.input.automation.robot.TempInputRobotNames_Package_References.TempInputRobotNames_Access;
   function "=" (Left, Right : TempInputRobotNames_Access) return Boolean renames org.allbinary.input.automation.robot.TempInputRobotNames_Package_References."=";
   subtype TempInputRobotNames_Access_Array is org.allbinary.input.automation.robot.TempInputRobotNames_Package_References.TempInputRobotNames_Access_Array;
   function "=" (Left, Right : TempInputRobotNames_Access_Array) return Boolean renames org.allbinary.input.automation.robot.TempInputRobotNames_Package_References."=";
   subtype TempInputRobotNames_Access_Array_Access is org.allbinary.input.automation.robot.TempInputRobotNames_Package_References.TempInputRobotNames_Access_Array_Access;
   function "=" (Left, Right : TempInputRobotNames_Access_Array_Access) return Boolean renames org.allbinary.input.automation.robot.TempInputRobotNames_Package_References."=";
   function Java_Box (Value : TempInputRobotNames_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.robot.TempInputRobotNames_Package_References.Java_Box;
   function Java_Unbox_TempInputRobotNames_Access_Array (Value : access Java_Object'Class) return TempInputRobotNames_Access_Array_Access renames org.allbinary.input.automation.robot.TempInputRobotNames_Package_References.Java_Unbox_TempInputRobotNames_Access_Array;
   subtype TempInputRobotNames_Access_Array_Access_Array is org.allbinary.input.automation.robot.TempInputRobotNames_Package_References.TempInputRobotNames_Access_Array_Access_Array;
   function "=" (Left, Right : TempInputRobotNames_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.robot.TempInputRobotNames_Package_References."=";
   subtype TempInputRobotNames_Access_Array_Access_Array_Access is org.allbinary.input.automation.robot.TempInputRobotNames_Package_References.TempInputRobotNames_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TempInputRobotNames_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.robot.TempInputRobotNames_Package_References."=";
   function Java_Box (Value : TempInputRobotNames_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.robot.TempInputRobotNames_Package_References.Java_Box;
   function Java_Unbox_TempInputRobotNames_Access_Array_Access_Array (Value : access Java_Object'Class) return TempInputRobotNames_Access_Array_Access_Array_Access renames org.allbinary.input.automation.robot.TempInputRobotNames_Package_References.Java_Unbox_TempInputRobotNames_Access_Array_Access_Array;

   type TempInputRobotNames is new Java_Object with null record;
   LOW_NAME : Unbounded_String;
   SYS_NAME : Unbounded_String;
   DX_NAME : Unbounded_String;

   procedure Initialize (This : in out TempInputRobotNames'Class);
   function Create return TempInputRobotNames_Access;

end org.allbinary.input.automation.robot.TempInputRobotNames_Package;


