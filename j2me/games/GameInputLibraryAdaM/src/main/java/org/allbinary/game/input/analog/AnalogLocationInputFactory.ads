--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.game.input.analog.AnalogLocationInputFactory_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;

   type AnalogLocationInputFactory is tagged;
   type AnalogLocationInputFactory_Access is access all AnalogLocationInputFactory'Class;
   type AnalogLocationInputFactory_Access_Array is array (Natural range <>) of AnalogLocationInputFactory_Access;
   type AnalogLocationInputFactory_Access_Array_Access is access all AnalogLocationInputFactory_Access_Array;

   type AnalogLocationInputFactory is new Java_Object with record
      list : BasicArrayList_Access;
   end record;
   instance : AnalogLocationInputFactory_Access;

   procedure Initialize (This : in out AnalogLocationInputFactory'Class);
   function Create return AnalogLocationInputFactory_Access;
   function getInstance return AnalogLocationInputFactory_Access;
   procedure getInstance;
   procedure addPlayer (This : in out AnalogLocationInputFactory; playerInputId : Integer);
   function getInstanceForPlayer (This : in out AnalogLocationInputFactory; playerInputId : Integer) return AnalogLocationInput_Access;
   procedure getInstanceForPlayer (This : in out AnalogLocationInputFactory; playerInputId : Integer);
   function getList (This : in out AnalogLocationInputFactory) return BasicArrayList_Access;
   procedure getList (This : in out AnalogLocationInputFactory);

end org.allbinary.game.input.analog.AnalogLocationInputFactory_Package;


