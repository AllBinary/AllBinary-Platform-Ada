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

limited with org.allbinary.game.combat.destroy.DestroyableSimpleBehavior_Package;
package org.allbinary.game.combat.destroy.DestroyableSimpleBehavior_Package_References is
   type DestroyableSimpleBehavior_Access is access all org.allbinary.game.combat.destroy.DestroyableSimpleBehavior_Package.DestroyableSimpleBehavior'Class;
   type DestroyableSimpleBehavior_Access_Array is array (Natural range <>) of DestroyableSimpleBehavior_Access;
   type DestroyableSimpleBehavior_Access_Array_Access is access all DestroyableSimpleBehavior_Access_Array;
   type DestroyableSimpleBehavior_Access_Array_Access_Array is array (Natural range <>) of DestroyableSimpleBehavior_Access_Array_Access;
   type DestroyableSimpleBehavior_Access_Array_Access_Array_Access is access all DestroyableSimpleBehavior_Access_Array_Access_Array;
end org.allbinary.game.combat.destroy.DestroyableSimpleBehavior_Package_References;

with org.allbinary.game.combat.destroy.DestroyableSimpleBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package_References;
with org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package; use org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package;

package org.allbinary.game.combat.destroy.DestroyableSimpleBehavior_Package is

   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package Reference_Types is
   subtype CollidableCompositeLayer_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access;
   use type CollidableCompositeLayer_Access;
   subtype CollidableCompositeLayer_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array;
   use type CollidableCompositeLayer_Access_Array;
   subtype CollidableCompositeLayer_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access;
   use type CollidableCompositeLayer_Access_Array_Access;
   subtype CollidableCompositeLayer_Access_Array_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array;
   use type CollidableCompositeLayer_Access_Array_Access_Array;
   subtype CollidableCompositeLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array_Access;
   use type CollidableCompositeLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DestroyableSimpleBehavior_Access is org.allbinary.game.combat.destroy.DestroyableSimpleBehavior_Package_References.DestroyableSimpleBehavior_Access;
   function "=" (Left, Right : DestroyableSimpleBehavior_Access) return Boolean renames org.allbinary.game.combat.destroy.DestroyableSimpleBehavior_Package_References."=";
   subtype DestroyableSimpleBehavior_Access_Array is org.allbinary.game.combat.destroy.DestroyableSimpleBehavior_Package_References.DestroyableSimpleBehavior_Access_Array;
   function "=" (Left, Right : DestroyableSimpleBehavior_Access_Array) return Boolean renames org.allbinary.game.combat.destroy.DestroyableSimpleBehavior_Package_References."=";
   subtype DestroyableSimpleBehavior_Access_Array_Access is org.allbinary.game.combat.destroy.DestroyableSimpleBehavior_Package_References.DestroyableSimpleBehavior_Access_Array_Access;
   function "=" (Left, Right : DestroyableSimpleBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.combat.destroy.DestroyableSimpleBehavior_Package_References."=";
   subtype DestroyableSimpleBehavior_Access_Array_Access_Array is org.allbinary.game.combat.destroy.DestroyableSimpleBehavior_Package_References.DestroyableSimpleBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : DestroyableSimpleBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.destroy.DestroyableSimpleBehavior_Package_References."=";
   subtype DestroyableSimpleBehavior_Access_Array_Access_Array_Access is org.allbinary.game.combat.destroy.DestroyableSimpleBehavior_Package_References.DestroyableSimpleBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DestroyableSimpleBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.destroy.DestroyableSimpleBehavior_Package_References."=";

   type DestroyableSimpleBehavior is new DestroyableBaseBehavior with record
      ownerLayer : CollidableCompositeLayer_Access;
      destroyed : Boolean;
   end record;

   procedure Initialize (This : in out DestroyableSimpleBehavior'Class; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   function Create (ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return DestroyableSimpleBehavior_Access;
   function isDestroyed (This : in out DestroyableSimpleBehavior) return Boolean;
   procedure setDestroyed (This : in out DestroyableSimpleBehavior; destroyed : Boolean);

end org.allbinary.game.combat.destroy.DestroyableSimpleBehavior_Package;


