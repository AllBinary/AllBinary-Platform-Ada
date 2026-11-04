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

limited with org.allbinary.bounds.event.BoundsChangeEvent_Package;
package org.allbinary.bounds.event.BoundsChangeEvent_Package_References is
   type BoundsChangeEvent_Access is access all org.allbinary.bounds.event.BoundsChangeEvent_Package.BoundsChangeEvent'Class;
   type BoundsChangeEvent_Access_Array is array (Natural range <>) of BoundsChangeEvent_Access;
   type BoundsChangeEvent_Access_Array_Access is access all BoundsChangeEvent_Access_Array;
   type BoundsChangeEvent_Access_Array_Access_Array is array (Natural range <>) of BoundsChangeEvent_Access_Array_Access;
   type BoundsChangeEvent_Access_Array_Access_Array_Access is access all BoundsChangeEvent_Access_Array_Access_Array;
end org.allbinary.bounds.event.BoundsChangeEvent_Package_References;

with org.allbinary.bounds.event.BoundsChangeEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.bounds.event.BoundsChangeEvent_Package is

   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BoundsChangeEvent_Access is org.allbinary.bounds.event.BoundsChangeEvent_Package_References.BoundsChangeEvent_Access;
   function "=" (Left, Right : BoundsChangeEvent_Access) return Boolean renames org.allbinary.bounds.event.BoundsChangeEvent_Package_References."=";
   subtype BoundsChangeEvent_Access_Array is org.allbinary.bounds.event.BoundsChangeEvent_Package_References.BoundsChangeEvent_Access_Array;
   function "=" (Left, Right : BoundsChangeEvent_Access_Array) return Boolean renames org.allbinary.bounds.event.BoundsChangeEvent_Package_References."=";
   subtype BoundsChangeEvent_Access_Array_Access is org.allbinary.bounds.event.BoundsChangeEvent_Package_References.BoundsChangeEvent_Access_Array_Access;
   function "=" (Left, Right : BoundsChangeEvent_Access_Array_Access) return Boolean renames org.allbinary.bounds.event.BoundsChangeEvent_Package_References."=";
   subtype BoundsChangeEvent_Access_Array_Access_Array is org.allbinary.bounds.event.BoundsChangeEvent_Package_References.BoundsChangeEvent_Access_Array_Access_Array;
   function "=" (Left, Right : BoundsChangeEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.bounds.event.BoundsChangeEvent_Package_References."=";
   subtype BoundsChangeEvent_Access_Array_Access_Array_Access is org.allbinary.bounds.event.BoundsChangeEvent_Package_References.BoundsChangeEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BoundsChangeEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.bounds.event.BoundsChangeEvent_Package_References."=";

   type BoundsChangeEvent is new AllBinaryEventObject with null record;

   procedure Initialize (This : in out BoundsChangeEvent'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   function Create (rectangle_Param : access Rectangle_Package.Rectangle'Class) return BoundsChangeEvent_Access;
   function getRectangle (This : in out BoundsChangeEvent) return Rectangle_Access;

end org.allbinary.bounds.event.BoundsChangeEvent_Package;


