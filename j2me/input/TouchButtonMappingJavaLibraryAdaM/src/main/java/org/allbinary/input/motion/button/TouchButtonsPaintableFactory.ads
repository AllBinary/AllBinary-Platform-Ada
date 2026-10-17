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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.input.motion.button.TouchButtonsPaintable_Package; use org.allbinary.input.motion.button.TouchButtonsPaintable_Package;

package org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;

   type TouchButtonsPaintableFactory is tagged;
   type TouchButtonsPaintableFactory_Access is access all TouchButtonsPaintableFactory'Class;
   type TouchButtonsPaintableFactory_Access_Array is array (Natural range <>) of TouchButtonsPaintableFactory_Access;
   type TouchButtonsPaintableFactory_Access_Array_Access is access all TouchButtonsPaintableFactory_Access_Array;

   type TouchButtonsPaintableFactory is new Java_Object with null record;

   procedure Initialize (This : in out TouchButtonsPaintableFactory'Class);
   function Create return TouchButtonsPaintableFactory_Access;
   function getInstance (basicColor_Param : access BasicColor_Package.BasicColor'Class) return Paintable_Access;
   procedure getInstance (basicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package;


