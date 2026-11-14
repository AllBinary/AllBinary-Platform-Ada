--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.game.input.analog.AnalogLocationInputFactory_Package;
package org.allbinary.game.input.analog.AnalogLocationInputFactory_Package_References is
   type AnalogLocationInputFactory_Access is access all org.allbinary.game.input.analog.AnalogLocationInputFactory_Package.AnalogLocationInputFactory'Class;
   type AnalogLocationInputFactory_Access_Array is array (Natural range <>) of AnalogLocationInputFactory_Access;
   type AnalogLocationInputFactory_Access_Array_Access is access all AnalogLocationInputFactory_Access_Array;
   type AnalogLocationInputFactory_Access_Array_Access_Array is array (Natural range <>) of AnalogLocationInputFactory_Access_Array_Access;
   type AnalogLocationInputFactory_Access_Array_Access_Array_Access is access all AnalogLocationInputFactory_Access_Array_Access_Array;
   type AnalogLocationInputFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnalogLocationInputFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : AnalogLocationInputFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnalogLocationInputFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnalogLocationInputFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnalogLocationInputFactory_Access_Array_Access is (if Value /= null and then Value.all in AnalogLocationInputFactory_Access_Array_Object'Class then AnalogLocationInputFactory_Access_Array_Object'Class (Value.all).Value else null);
   type AnalogLocationInputFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnalogLocationInputFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AnalogLocationInputFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnalogLocationInputFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnalogLocationInputFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnalogLocationInputFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AnalogLocationInputFactory_Access_Array_Access_Array_Object'Class then AnalogLocationInputFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.analog.AnalogLocationInputFactory_Package_References;

with org.allbinary.game.input.analog.AnalogLocationInputFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.game.input.analog.AnalogLocationInput_Package;
with org.allbinary.game.input.analog.AnalogLocationInput_Package_References;

package org.allbinary.game.input.analog.AnalogLocationInputFactory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype AnalogLocationInput_Access is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access;
   use type AnalogLocationInput_Access;
   subtype AnalogLocationInput_Access_Array is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access_Array;
   use type AnalogLocationInput_Access_Array;
   subtype AnalogLocationInput_Access_Array_Access is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access_Array_Access;
   use type AnalogLocationInput_Access_Array_Access;
   subtype AnalogLocationInput_Access_Array_Access_Array is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access_Array_Access_Array;
   use type AnalogLocationInput_Access_Array_Access_Array;
   subtype AnalogLocationInput_Access_Array_Access_Array_Access is org.allbinary.game.input.analog.AnalogLocationInput_Package_References.AnalogLocationInput_Access_Array_Access_Array_Access;
   use type AnalogLocationInput_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AnalogLocationInputFactory_Access is org.allbinary.game.input.analog.AnalogLocationInputFactory_Package_References.AnalogLocationInputFactory_Access;
   function "=" (Left, Right : AnalogLocationInputFactory_Access) return Boolean renames org.allbinary.game.input.analog.AnalogLocationInputFactory_Package_References."=";
   subtype AnalogLocationInputFactory_Access_Array is org.allbinary.game.input.analog.AnalogLocationInputFactory_Package_References.AnalogLocationInputFactory_Access_Array;
   function "=" (Left, Right : AnalogLocationInputFactory_Access_Array) return Boolean renames org.allbinary.game.input.analog.AnalogLocationInputFactory_Package_References."=";
   subtype AnalogLocationInputFactory_Access_Array_Access is org.allbinary.game.input.analog.AnalogLocationInputFactory_Package_References.AnalogLocationInputFactory_Access_Array_Access;
   function "=" (Left, Right : AnalogLocationInputFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.analog.AnalogLocationInputFactory_Package_References."=";
   function Java_Box (Value : AnalogLocationInputFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.analog.AnalogLocationInputFactory_Package_References.Java_Box;
   function Java_Unbox_AnalogLocationInputFactory_Access_Array (Value : access Java_Object'Class) return AnalogLocationInputFactory_Access_Array_Access renames org.allbinary.game.input.analog.AnalogLocationInputFactory_Package_References.Java_Unbox_AnalogLocationInputFactory_Access_Array;
   subtype AnalogLocationInputFactory_Access_Array_Access_Array is org.allbinary.game.input.analog.AnalogLocationInputFactory_Package_References.AnalogLocationInputFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AnalogLocationInputFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.analog.AnalogLocationInputFactory_Package_References."=";
   subtype AnalogLocationInputFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.analog.AnalogLocationInputFactory_Package_References.AnalogLocationInputFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnalogLocationInputFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.analog.AnalogLocationInputFactory_Package_References."=";
   function Java_Box (Value : AnalogLocationInputFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.analog.AnalogLocationInputFactory_Package_References.Java_Box;
   function Java_Unbox_AnalogLocationInputFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return AnalogLocationInputFactory_Access_Array_Access_Array_Access renames org.allbinary.game.input.analog.AnalogLocationInputFactory_Package_References.Java_Unbox_AnalogLocationInputFactory_Access_Array_Access_Array;

   type AnalogLocationInputFactory is new Java_Object with record
      list : BasicArrayList_Access;
   end record;
   instance : AnalogLocationInputFactory_Access;

   procedure Initialize (This : in out AnalogLocationInputFactory'Class);
   function Create return AnalogLocationInputFactory_Access;
   function getInstance return AnalogLocationInputFactory_Access;
   procedure addPlayer (This : in out AnalogLocationInputFactory; playerInputId : Integer);
   function getInstanceForPlayer (This : in out AnalogLocationInputFactory; playerInputId : Integer) return AnalogLocationInput_Access;
   procedure getInstanceForPlayer (This : in out AnalogLocationInputFactory; playerInputId : Integer);
   function getList (This : in out AnalogLocationInputFactory) return BasicArrayList_Access;

end org.allbinary.game.input.analog.AnalogLocationInputFactory_Package;


