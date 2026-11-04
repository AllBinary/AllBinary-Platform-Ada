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

limited with org.allbinary.graphics.color.ColorChangeEvent_Package;
package org.allbinary.graphics.color.ColorChangeEvent_Package_References is
   type ColorChangeEvent_Access is access all org.allbinary.graphics.color.ColorChangeEvent_Package.ColorChangeEvent'Class;
   type ColorChangeEvent_Access_Array is array (Natural range <>) of ColorChangeEvent_Access;
   type ColorChangeEvent_Access_Array_Access is access all ColorChangeEvent_Access_Array;
   type ColorChangeEvent_Access_Array_Access_Array is array (Natural range <>) of ColorChangeEvent_Access_Array_Access;
   type ColorChangeEvent_Access_Array_Access_Array_Access is access all ColorChangeEvent_Access_Array_Access_Array;
end org.allbinary.graphics.color.ColorChangeEvent_Package_References;

with org.allbinary.graphics.color.ColorChangeEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;

package org.allbinary.graphics.color.ColorChangeEvent_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ColorChangeEvent_Access is org.allbinary.graphics.color.ColorChangeEvent_Package_References.ColorChangeEvent_Access;
   function "=" (Left, Right : ColorChangeEvent_Access) return Boolean renames org.allbinary.graphics.color.ColorChangeEvent_Package_References."=";
   subtype ColorChangeEvent_Access_Array is org.allbinary.graphics.color.ColorChangeEvent_Package_References.ColorChangeEvent_Access_Array;
   function "=" (Left, Right : ColorChangeEvent_Access_Array) return Boolean renames org.allbinary.graphics.color.ColorChangeEvent_Package_References."=";
   subtype ColorChangeEvent_Access_Array_Access is org.allbinary.graphics.color.ColorChangeEvent_Package_References.ColorChangeEvent_Access_Array_Access;
   function "=" (Left, Right : ColorChangeEvent_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.ColorChangeEvent_Package_References."=";
   subtype ColorChangeEvent_Access_Array_Access_Array is org.allbinary.graphics.color.ColorChangeEvent_Package_References.ColorChangeEvent_Access_Array_Access_Array;
   function "=" (Left, Right : ColorChangeEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.ColorChangeEvent_Package_References."=";
   subtype ColorChangeEvent_Access_Array_Access_Array_Access is org.allbinary.graphics.color.ColorChangeEvent_Package_References.ColorChangeEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorChangeEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.ColorChangeEvent_Package_References."=";

   type ColorChangeEvent is new AllBinaryEventObject with record
      basicColor : BasicColor_Access;
   end record;

   procedure Initialize (This : in out ColorChangeEvent'Class; anyType_Param : access Java_Object'Class);
   function Create (anyType_Param : access Java_Object'Class) return ColorChangeEvent_Access;
   procedure setBasicColorP (This : in out ColorChangeEvent; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getBasicColorP (This : in out ColorChangeEvent) return BasicColor_Access;

end org.allbinary.graphics.color.ColorChangeEvent_Package;


