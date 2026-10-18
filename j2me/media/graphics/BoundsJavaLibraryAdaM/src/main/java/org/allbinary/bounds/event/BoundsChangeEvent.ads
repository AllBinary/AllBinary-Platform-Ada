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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.bounds.event.BoundsChangeEvent_Package is

   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type BoundsChangeEvent is tagged;
   type BoundsChangeEvent_Access is access all BoundsChangeEvent'Class;
   type BoundsChangeEvent_Access_Array is array (Natural range <>) of BoundsChangeEvent_Access;
   type BoundsChangeEvent_Access_Array_Access is access all BoundsChangeEvent_Access_Array;
   type BoundsChangeEvent_Access_Array_Access_Array is array (Natural range <>) of BoundsChangeEvent_Access_Array_Access;
   type BoundsChangeEvent_Access_Array_Access_Array_Access is access all BoundsChangeEvent_Access_Array_Access_Array;

   type BoundsChangeEvent is new AllBinaryEventObject with null record;

   procedure Initialize (This : in out BoundsChangeEvent'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   function Create (rectangle_Param : access Rectangle_Package.Rectangle'Class) return BoundsChangeEvent_Access;
   function getRectangle (This : in out BoundsChangeEvent) return Rectangle_Access;

end org.allbinary.bounds.event.BoundsChangeEvent_Package;


