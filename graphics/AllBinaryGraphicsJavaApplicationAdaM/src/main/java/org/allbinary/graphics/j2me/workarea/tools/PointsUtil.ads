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
with org.allbinary.animation.VectorRotationGenerator_Package; use org.allbinary.animation.VectorRotationGenerator_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package is

   package VectorRotationGenerator_Package renames Standard.org.allbinary.animation.VectorRotationGenerator_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type PointsUtil is tagged;
   type PointsUtil_Access is access all PointsUtil'Class;
   type PointsUtil_Access_Array is array (Natural range <>) of PointsUtil_Access;
   type PointsUtil_Access_Array_Access is access all PointsUtil_Access_Array;

   type PointsUtil is new Java_Object with null record;
   instance : PointsUtil_Access;

   procedure Initialize (This : in out PointsUtil'Class);
   function Create return PointsUtil_Access;
   function getInstance return PointsUtil_Access;
   procedure getInstance;
   function doTransforms (This : in out PointsUtil; pointVector : BasicArrayList_Access; angle : Long_Float; fulcrumPoint : GPoint_Access) return BasicArrayList_Access;
   procedure doTransforms (This : in out PointsUtil; pointVector : BasicArrayList_Access; angle : Long_Float; fulcrumPoint : GPoint_Access);

end org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package;


