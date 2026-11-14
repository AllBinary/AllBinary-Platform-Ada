-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.game.layer.capital.event.CapitalEvent_Package;
package org.allbinary.game.layer.capital.event.CapitalEvent_Package_References is
   type CapitalEvent_Access is access all org.allbinary.game.layer.capital.event.CapitalEvent_Package.CapitalEvent'Class;
   type CapitalEvent_Access_Array is array (Natural range <>) of CapitalEvent_Access;
   type CapitalEvent_Access_Array_Access is access all CapitalEvent_Access_Array;
   type CapitalEvent_Access_Array_Access_Array is array (Natural range <>) of CapitalEvent_Access_Array_Access;
   type CapitalEvent_Access_Array_Access_Array_Access is access all CapitalEvent_Access_Array_Access_Array;
   type CapitalEvent_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CapitalEvent_Access_Array_Access;
   end record;
   function Java_Box (Value : CapitalEvent_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CapitalEvent_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CapitalEvent_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CapitalEvent_Access_Array_Access is (if Value /= null and then Value.all in CapitalEvent_Access_Array_Object'Class then CapitalEvent_Access_Array_Object'Class (Value.all).Value else null);
   type CapitalEvent_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CapitalEvent_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CapitalEvent_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CapitalEvent_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CapitalEvent_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CapitalEvent_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CapitalEvent_Access_Array_Access_Array_Object'Class then CapitalEvent_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.capital.event.CapitalEvent_Package_References;

with org.allbinary.game.layer.capital.event.CapitalEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.game.layer.capital.event.CapitalEvent_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CapitalEvent_Access is org.allbinary.game.layer.capital.event.CapitalEvent_Package_References.CapitalEvent_Access;
   function "=" (Left, Right : CapitalEvent_Access) return Boolean renames org.allbinary.game.layer.capital.event.CapitalEvent_Package_References."=";
   subtype CapitalEvent_Access_Array is org.allbinary.game.layer.capital.event.CapitalEvent_Package_References.CapitalEvent_Access_Array;
   function "=" (Left, Right : CapitalEvent_Access_Array) return Boolean renames org.allbinary.game.layer.capital.event.CapitalEvent_Package_References."=";
   subtype CapitalEvent_Access_Array_Access is org.allbinary.game.layer.capital.event.CapitalEvent_Package_References.CapitalEvent_Access_Array_Access;
   function "=" (Left, Right : CapitalEvent_Access_Array_Access) return Boolean renames org.allbinary.game.layer.capital.event.CapitalEvent_Package_References."=";
   function Java_Box (Value : CapitalEvent_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.capital.event.CapitalEvent_Package_References.Java_Box;
   function Java_Unbox_CapitalEvent_Access_Array (Value : access Java_Object'Class) return CapitalEvent_Access_Array_Access renames org.allbinary.game.layer.capital.event.CapitalEvent_Package_References.Java_Unbox_CapitalEvent_Access_Array;
   subtype CapitalEvent_Access_Array_Access_Array is org.allbinary.game.layer.capital.event.CapitalEvent_Package_References.CapitalEvent_Access_Array_Access_Array;
   function "=" (Left, Right : CapitalEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.capital.event.CapitalEvent_Package_References."=";
   subtype CapitalEvent_Access_Array_Access_Array_Access is org.allbinary.game.layer.capital.event.CapitalEvent_Package_References.CapitalEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CapitalEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.capital.event.CapitalEvent_Package_References."=";
   function Java_Box (Value : CapitalEvent_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.capital.event.CapitalEvent_Package_References.Java_Box;
   function Java_Unbox_CapitalEvent_Access_Array_Access_Array (Value : access Java_Object'Class) return CapitalEvent_Access_Array_Access_Array_Access renames org.allbinary.game.layer.capital.event.CapitalEvent_Package_References.Java_Unbox_CapitalEvent_Access_Array_Access_Array;

   type CapitalEvent is new AllBinaryEventObject with record
      value : Integer;
   end record;

   procedure Initialize (This : in out CapitalEvent'Class; anyType_Param : access Java_Object'Class);
   function Create (anyType_Param : access Java_Object'Class) return CapitalEvent_Access;
   function toString (This : in out CapitalEvent) return Unbounded_String;
   function getValue (This : in out CapitalEvent) return Integer;
   procedure setValue (This : in out CapitalEvent; value : Integer);

end org.allbinary.game.layer.capital.event.CapitalEvent_Package;


