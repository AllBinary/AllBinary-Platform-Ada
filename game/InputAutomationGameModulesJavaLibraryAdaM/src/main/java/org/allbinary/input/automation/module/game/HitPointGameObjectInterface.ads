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

limited with org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package;
package org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package_References is
   type HitPointGameObjectInterface_Access is access all org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package.HitPointGameObjectInterface'Class;
   type HitPointGameObjectInterface_Access_Array is array (Natural range <>) of HitPointGameObjectInterface_Access;
   type HitPointGameObjectInterface_Access_Array_Access is access all HitPointGameObjectInterface_Access_Array;
   type HitPointGameObjectInterface_Access_Array_Access_Array is array (Natural range <>) of HitPointGameObjectInterface_Access_Array_Access;
   type HitPointGameObjectInterface_Access_Array_Access_Array_Access is access all HitPointGameObjectInterface_Access_Array_Access_Array;
end org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package_References;

with org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package; use org.allbinary.input.automation.module.game.MeteredGameObjectInterface_Package;

package org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type HitPointGameObjectInterface is interface and MeteredGameObjectInterface;
   subtype HitPointGameObjectInterface_Access is org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package_References.HitPointGameObjectInterface_Access;
   function "=" (Left, Right : HitPointGameObjectInterface_Access) return Boolean renames org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package_References."=";
   subtype HitPointGameObjectInterface_Access_Array is org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package_References.HitPointGameObjectInterface_Access_Array;
   function "=" (Left, Right : HitPointGameObjectInterface_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package_References."=";
   subtype HitPointGameObjectInterface_Access_Array_Access is org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package_References.HitPointGameObjectInterface_Access_Array_Access;
   function "=" (Left, Right : HitPointGameObjectInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package_References."=";
   subtype HitPointGameObjectInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package_References.HitPointGameObjectInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HitPointGameObjectInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package_References."=";
   subtype HitPointGameObjectInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package_References.HitPointGameObjectInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HitPointGameObjectInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package_References."=";
   function Java_Object_Access_From_HitPointGameObjectInterface (Value : HitPointGameObjectInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function isMoreThan (This : in out HitPointGameObjectInterface; aFloat : Float) return Boolean is abstract;
   procedure isMoreThan (This : in out HitPointGameObjectInterface; aFloat : Float) is abstract;
   function isCloseDeath (This : in out HitPointGameObjectInterface) return Boolean is abstract;
   function isDamaged (This : in out HitPointGameObjectInterface) return Boolean is abstract;

end org.allbinary.input.automation.module.game.HitPointGameObjectInterface_Package;


