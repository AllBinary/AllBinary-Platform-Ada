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
limited with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
package org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References is
   type DisplayChangeEvent_Access is access all org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package.DisplayChangeEvent'Class;
   type DisplayChangeEvent_Access_Array is array (Natural range <>) of DisplayChangeEvent_Access;
   type DisplayChangeEvent_Access_Array_Access is access all DisplayChangeEvent_Access_Array;
   type DisplayChangeEvent_Access_Array_Access_Array is array (Natural range <>) of DisplayChangeEvent_Access_Array_Access;
   type DisplayChangeEvent_Access_Array_Access_Array_Access is access all DisplayChangeEvent_Access_Array_Access_Array;
   type DisplayChangeEvent_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DisplayChangeEvent_Access_Array_Access;
   end record;
   function Java_Box (Value : DisplayChangeEvent_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DisplayChangeEvent_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DisplayChangeEvent_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DisplayChangeEvent_Access_Array_Access is (if Value /= null and then Value.all in DisplayChangeEvent_Access_Array_Object'Class then DisplayChangeEvent_Access_Array_Object'Class (Value.all).Value else null);
   type DisplayChangeEvent_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DisplayChangeEvent_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DisplayChangeEvent_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DisplayChangeEvent_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DisplayChangeEvent_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DisplayChangeEvent_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DisplayChangeEvent_Access_Array_Access_Array_Object'Class then DisplayChangeEvent_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References;

with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype DisplayChangeEvent_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access;
   function "=" (Left, Right : DisplayChangeEvent_Access) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References."=";
   subtype DisplayChangeEvent_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array;
   function "=" (Left, Right : DisplayChangeEvent_Access_Array) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References."=";
   subtype DisplayChangeEvent_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access;
   function "=" (Left, Right : DisplayChangeEvent_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References."=";
   function Java_Box (Value : DisplayChangeEvent_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.Java_Box;
   function Java_Unbox_DisplayChangeEvent_Access_Array (Value : access Java_Object'Class) return DisplayChangeEvent_Access_Array_Access renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.Java_Unbox_DisplayChangeEvent_Access_Array;
   subtype DisplayChangeEvent_Access_Array_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access_Array;
   function "=" (Left, Right : DisplayChangeEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References."=";
   subtype DisplayChangeEvent_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DisplayChangeEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References."=";
   function Java_Box (Value : DisplayChangeEvent_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.Java_Box;
   function Java_Unbox_DisplayChangeEvent_Access_Array_Access_Array (Value : access Java_Object'Class) return DisplayChangeEvent_Access_Array_Access_Array_Access renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.Java_Unbox_DisplayChangeEvent_Access_Array_Access_Array;

   type DisplayChangeEvent is new AllBinaryEventObject with null record;

   procedure Initialize (This : in out DisplayChangeEvent'Class; anyType_Param : access Java_Object'Class);
   function Create (anyType_Param : access Java_Object'Class) return DisplayChangeEvent_Access;

end org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;


