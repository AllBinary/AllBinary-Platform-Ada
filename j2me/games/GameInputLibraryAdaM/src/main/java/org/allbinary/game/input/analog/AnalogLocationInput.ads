--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.CustomGPoint_Package; use org.allbinary.graphics.CustomGPoint_Package;

package org.allbinary.game.input.analog.AnalogLocationInput_Package is

   package CustomGPoint_Package renames Standard.org.allbinary.graphics.CustomGPoint_Package;

   type AnalogLocationInput is tagged;
   type AnalogLocationInput_Access is access all AnalogLocationInput'Class;
   type AnalogLocationInput_Access_Array is array (Natural range <>) of AnalogLocationInput_Access;
   type AnalogLocationInput_Access_Array_Access is access all AnalogLocationInput_Access_Array;

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


