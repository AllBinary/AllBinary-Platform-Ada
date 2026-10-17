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
with org.allbinary.bounds.LayerBounds_Package; use org.allbinary.bounds.LayerBounds_Package;
with org.allbinary.bounds.BoundsVisitorInterface_Package; use org.allbinary.bounds.BoundsVisitorInterface_Package;

package org.allbinary.bounds.TopULayerBounds_Package is

   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;

   type TopULayerBounds is tagged;
   type TopULayerBounds_Access is access all TopULayerBounds'Class;
   type TopULayerBounds_Access_Array is array (Natural range <>) of TopULayerBounds_Access;
   type TopULayerBounds_Access_Array_Access is access all TopULayerBounds_Access_Array;

   type TopULayerBounds is new LayerBounds with null record;

   procedure Initialize (This : in out TopULayerBounds'Class; rectangle_Param : access Rectangle'Class);
   function Create (rectangle_Param : access Rectangle'Class) return TopULayerBounds_Access;
   procedure visit (This : in out TopULayerBounds; boundsVisitorInterface_Param : access BoundsVisitorInterface'Class);

end org.allbinary.bounds.TopULayerBounds_Package;


