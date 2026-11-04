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

limited with org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package;
package org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package_References is
   type TouchButtonsPaintableCompositeFactory_Access is access all org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package.TouchButtonsPaintableCompositeFactory'Class;
   type TouchButtonsPaintableCompositeFactory_Access_Array is array (Natural range <>) of TouchButtonsPaintableCompositeFactory_Access;
   type TouchButtonsPaintableCompositeFactory_Access_Array_Access is access all TouchButtonsPaintableCompositeFactory_Access_Array;
   type TouchButtonsPaintableCompositeFactory_Access_Array_Access_Array is array (Natural range <>) of TouchButtonsPaintableCompositeFactory_Access_Array_Access;
   type TouchButtonsPaintableCompositeFactory_Access_Array_Access_Array_Access is access all TouchButtonsPaintableCompositeFactory_Access_Array_Access_Array;
end org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package_References;

with org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.mapping.InputMappingInterface_Package;
with org.allbinary.game.input.mapping.InputMappingInterface_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.graphics.paint.ProcessPaintable_Package;
with org.allbinary.graphics.paint.ProcessPaintable_Package_References;

package org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package is

   package InputMappingInterface_Package renames Standard.org.allbinary.game.input.mapping.InputMappingInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ProcessPaintable_Package renames Standard.org.allbinary.graphics.paint.ProcessPaintable_Package;
   package Reference_Types is
   subtype InputMappingInterface_Access is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access;
   use type InputMappingInterface_Access;
   subtype InputMappingInterface_Access_Array is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access_Array;
   use type InputMappingInterface_Access_Array;
   subtype InputMappingInterface_Access_Array_Access is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access_Array_Access;
   use type InputMappingInterface_Access_Array_Access;
   subtype InputMappingInterface_Access_Array_Access_Array is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access_Array_Access_Array;
   use type InputMappingInterface_Access_Array_Access_Array;
   subtype InputMappingInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access_Array_Access_Array_Access;
   use type InputMappingInterface_Access_Array_Access_Array_Access;
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
   subtype ProcessPaintable_Access is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access;
   use type ProcessPaintable_Access;
   subtype ProcessPaintable_Access_Array is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array;
   use type ProcessPaintable_Access_Array;
   subtype ProcessPaintable_Access_Array_Access is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array_Access;
   use type ProcessPaintable_Access_Array_Access;
   subtype ProcessPaintable_Access_Array_Access_Array is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array_Access_Array;
   use type ProcessPaintable_Access_Array_Access_Array;
   subtype ProcessPaintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array_Access_Array_Access;
   use type ProcessPaintable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TouchButtonsPaintableCompositeFactory_Access is org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package_References.TouchButtonsPaintableCompositeFactory_Access;
   function "=" (Left, Right : TouchButtonsPaintableCompositeFactory_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package_References."=";
   subtype TouchButtonsPaintableCompositeFactory_Access_Array is org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package_References.TouchButtonsPaintableCompositeFactory_Access_Array;
   function "=" (Left, Right : TouchButtonsPaintableCompositeFactory_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package_References."=";
   subtype TouchButtonsPaintableCompositeFactory_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package_References.TouchButtonsPaintableCompositeFactory_Access_Array_Access;
   function "=" (Left, Right : TouchButtonsPaintableCompositeFactory_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package_References."=";
   subtype TouchButtonsPaintableCompositeFactory_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package_References.TouchButtonsPaintableCompositeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonsPaintableCompositeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package_References."=";
   subtype TouchButtonsPaintableCompositeFactory_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package_References.TouchButtonsPaintableCompositeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonsPaintableCompositeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package_References."=";

   type TouchButtonsPaintableCompositeFactory is new Java_Object with null record;

   procedure Initialize (This : in out TouchButtonsPaintableCompositeFactory'Class);
   function Create return TouchButtonsPaintableCompositeFactory_Access;
   function getInstance (inputMappingInterface_Param : access InputMappingInterface_Package.InputMappingInterface'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class) return ProcessPaintable_Access;
   procedure getInstance (inputMappingInterface_Param : access InputMappingInterface_Package.InputMappingInterface'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package;


