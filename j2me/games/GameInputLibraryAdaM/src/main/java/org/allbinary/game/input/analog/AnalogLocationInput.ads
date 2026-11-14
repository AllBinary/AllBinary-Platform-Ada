--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.game.input.analog.AnalogLocationInput_Package;
package org.allbinary.game.input.analog.AnalogLocationInput_Package_References is
   type AnalogLocationInput_Access is access all org.allbinary.game.input.analog.AnalogLocationInput_Package.AnalogLocationInput'Class;
   type AnalogLocationInput_Access_Array is array (Natural range <>) of AnalogLocationInput_Access;
   type AnalogLocationInput_Access_Array_Access is access all AnalogLocationInput_Access_Array;
   type AnalogLocationInput_Access_Array_Access_Array is array (Natural range <>) of AnalogLocationInput_Access_Array_Access;
   type AnalogLocationInput_Access_Array_Access_Array_Access is access all AnalogLocationInput_Access_Array_Access_Array;
   type AnalogLocationInput_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnalogLocationInput_Access_Array_Access;
   end record;
   function Java_Box (Value : AnalogLocationInput_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnalogLocationInput_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnalogLocationInput_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnalogLocationInput_Access_Array_Access is (if Value /= null and then Value.all in AnalogLocationInput_Access_Array_Object'Class then AnalogLocationInput_Access_Array_Object'Class (Value.all).Value else null);
   type AnalogLocationInput_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnalogLocationInput_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AnalogLocationInput_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnalogLocationInput_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnalogLocationInput_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnalogLocationInput_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AnalogLocationInput_Access_Array_Access_Array_Object'Class then AnalogLocationInput_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.analog.AnalogLocationInput_Package_References;

with org.allbinary.game.input.analog.AnalogLocationInput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.CustomGPoint_Package;
with org.allbinary.graphics.CustomGPoint_Package_References;

package org.allbinary.game.input.analog.AnalogLocationInput_Package is

   package CustomGPoint_Package renames Standard.org.allbinary.graphics.CustomGPoint_Package;
   package Reference_Types is
   subtype CustomGPoint_Access is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access;
   use type CustomGPoint_Access;
   subtype CustomGPoint_Access_Array is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access_Array;
   use type CustomGPoint_Access_Array;
   subtype CustomGPoint_Access_Array_Access is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access_Array_Access;
   use type CustomGPoint_Access_Array_Access;
   subtype CustomGPoint_Access_Array_Access_Array is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access_Array_Access_Array;
   use type CustomGPoint_Access_Array_Access_Array;
   subtype CustomGPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access_Array_Access_Array_Access;
   use type CustomGPoint_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AnalogLocationInput_Access is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access;
   function "=" (Left, Right : AnalogLocationInput_Access) return Boolean renames org.allbinary.game.input.analog.AnalogLocationInput_Package_References."=";
   subtype AnalogLocationInput_Access_Array is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access_Array;
   function "=" (Left, Right : AnalogLocationInput_Access_Array) return Boolean renames org.allbinary.game.input.analog.AnalogLocationInput_Package_References."=";
   subtype AnalogLocationInput_Access_Array_Access is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access_Array_Access;
   function "=" (Left, Right : AnalogLocationInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.analog.AnalogLocationInput_Package_References."=";
   function Java_Box (Value : AnalogLocationInput_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.analog.AnalogLocationInput_Package_References.Java_Box;
   function Java_Unbox_AnalogLocationInput_Access_Array (Value : access Java_Object'Class) return AnalogLocationInput_Access_Array_Access renames org.allbinary.game.input.analog.AnalogLocationInput_Package_References.Java_Unbox_AnalogLocationInput_Access_Array;
   subtype AnalogLocationInput_Access_Array_Access_Array is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access_Array_Access_Array;
   function "=" (Left, Right : AnalogLocationInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.analog.AnalogLocationInput_Package_References."=";
   subtype AnalogLocationInput_Access_Array_Access_Array_Access is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnalogLocationInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.analog.AnalogLocationInput_Package_References."=";
   function Java_Box (Value : AnalogLocationInput_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.analog.AnalogLocationInput_Package_References.Java_Box;
   function Java_Unbox_AnalogLocationInput_Access_Array_Access_Array (Value : access Java_Object'Class) return AnalogLocationInput_Access_Array_Access_Array_Access renames org.allbinary.game.input.analog.AnalogLocationInput_Package_References.Java_Unbox_AnalogLocationInput_Access_Array_Access_Array;

   type AnalogLocationInput is new Java_Object with record
      playerId : Integer;
      customGPoint : CustomGPoint_Access;
      rz : Integer;
      rightTrigger : Integer;
      leftTrigger : Integer;
   end record;
   NULL_ANALOG_LOCATION_INPUT : AnalogLocationInput_Access;

   procedure Initialize (This : in out AnalogLocationInput'Class; playerId : Integer);
   function Create (playerId : Integer) return AnalogLocationInput_Access;
   function getPlayerId (This : in out AnalogLocationInput) return Integer;
   function getCustomGPoint (This : in out AnalogLocationInput) return CustomGPoint_Access;
   function getRz (This : in out AnalogLocationInput) return Integer;
   procedure setRz (This : in out AnalogLocationInput; rz : Integer);
   function getRightTrigger (This : in out AnalogLocationInput) return Integer;
   procedure setRightTrigger (This : in out AnalogLocationInput; rightTrigger : Integer);
   function getLeftTrigger (This : in out AnalogLocationInput) return Integer;
   procedure setLeftTrigger (This : in out AnalogLocationInput; leftTrigger : Integer);

end org.allbinary.game.input.analog.AnalogLocationInput_Package;


