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

limited with org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package;
package org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package_References is
   type DestroyedLayerProcessor_Access is access all org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package.DestroyedLayerProcessor'Class;
   type DestroyedLayerProcessor_Access_Array is array (Natural range <>) of DestroyedLayerProcessor_Access;
   type DestroyedLayerProcessor_Access_Array_Access is access all DestroyedLayerProcessor_Access_Array;
   type DestroyedLayerProcessor_Access_Array_Access_Array is array (Natural range <>) of DestroyedLayerProcessor_Access_Array_Access;
   type DestroyedLayerProcessor_Access_Array_Access_Array_Access is access all DestroyedLayerProcessor_Access_Array_Access_Array;
end org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package_References;

with org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.layer.BasicLayerProcessor_Package; use org.allbinary.layer.BasicLayerProcessor_Package;

package org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package is

   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package BasicLayerProcessor_Package renames Standard.org.allbinary.layer.BasicLayerProcessor_Package;
   package Reference_Types is
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DestroyedLayerProcessor_Access is org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package_References.DestroyedLayerProcessor_Access;
   function "=" (Left, Right : DestroyedLayerProcessor_Access) return Boolean renames org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package_References."=";
   subtype DestroyedLayerProcessor_Access_Array is org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package_References.DestroyedLayerProcessor_Access_Array;
   function "=" (Left, Right : DestroyedLayerProcessor_Access_Array) return Boolean renames org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package_References."=";
   subtype DestroyedLayerProcessor_Access_Array_Access is org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package_References.DestroyedLayerProcessor_Access_Array_Access;
   function "=" (Left, Right : DestroyedLayerProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package_References."=";
   subtype DestroyedLayerProcessor_Access_Array_Access_Array is org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package_References.DestroyedLayerProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : DestroyedLayerProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package_References."=";
   subtype DestroyedLayerProcessor_Access_Array_Access_Array_Access is org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package_References.DestroyedLayerProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DestroyedLayerProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package_References."=";

   type DestroyedLayerProcessor is new BasicLayerProcessor with null record;
   DESTROYED_LAYER_PROCESSOR : BasicLayerProcessor_Access;

   procedure Initialize (This : in out DestroyedLayerProcessor'Class);
   function Create return DestroyedLayerProcessor_Access;
   procedure init;
   function getInstance return BasicLayerProcessor_Access;
   procedure process (This : in out DestroyedLayerProcessor; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);

end org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package;


