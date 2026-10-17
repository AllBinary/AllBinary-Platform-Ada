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
with org.allbinary.game.input.mapping.InputMappingInterface_Package; use org.allbinary.game.input.mapping.InputMappingInterface_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.paint.ProcessPaintable_Package; use org.allbinary.graphics.paint.ProcessPaintable_Package;

package org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package is

   package InputMappingInterface_Package renames Standard.org.allbinary.game.input.mapping.InputMappingInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ProcessPaintable_Package renames Standard.org.allbinary.graphics.paint.ProcessPaintable_Package;

   type TouchButtonsPaintableCompositeFactory is tagged;
   type TouchButtonsPaintableCompositeFactory_Access is access all TouchButtonsPaintableCompositeFactory'Class;
   type TouchButtonsPaintableCompositeFactory_Access_Array is array (Natural range <>) of TouchButtonsPaintableCompositeFactory_Access;
   type TouchButtonsPaintableCompositeFactory_Access_Array_Access is access all TouchButtonsPaintableCompositeFactory_Access_Array;

   type TouchButtonsPaintableCompositeFactory is new Java_Object with null record;

   procedure Initialize (This : in out TouchButtonsPaintableCompositeFactory'Class);
   function Create return TouchButtonsPaintableCompositeFactory_Access;
   function getInstance (inputMappingInterface_Param : access InputMappingInterface'Class; basicColor_Param : access BasicColor'Class) return ProcessPaintable_Access;
   procedure getInstance (inputMappingInterface_Param : access InputMappingInterface'Class; basicColor_Param : access BasicColor'Class);

end org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package;


