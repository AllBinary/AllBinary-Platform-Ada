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

limited with org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package;
package org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package_References is
   type DestroyableBaseBehavior_Access is access all org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package.DestroyableBaseBehavior'Class;
   type DestroyableBaseBehavior_Access_Array is array (Natural range <>) of DestroyableBaseBehavior_Access;
   type DestroyableBaseBehavior_Access_Array_Access is access all DestroyableBaseBehavior_Access_Array;
   type DestroyableBaseBehavior_Access_Array_Access_Array is array (Natural range <>) of DestroyableBaseBehavior_Access_Array_Access;
   type DestroyableBaseBehavior_Access_Array_Access_Array_Access is access all DestroyableBaseBehavior_Access_Array_Access_Array;
end org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package_References;

with org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.combat.destroy.DestroyableInterface_Package; use org.allbinary.game.combat.destroy.DestroyableInterface_Package;

package org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype DestroyableBaseBehavior_Access is org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package_References.DestroyableBaseBehavior_Access;
   function "=" (Left, Right : DestroyableBaseBehavior_Access) return Boolean renames org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package_References."=";
   subtype DestroyableBaseBehavior_Access_Array is org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package_References.DestroyableBaseBehavior_Access_Array;
   function "=" (Left, Right : DestroyableBaseBehavior_Access_Array) return Boolean renames org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package_References."=";
   subtype DestroyableBaseBehavior_Access_Array_Access is org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package_References.DestroyableBaseBehavior_Access_Array_Access;
   function "=" (Left, Right : DestroyableBaseBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package_References."=";
   subtype DestroyableBaseBehavior_Access_Array_Access_Array is org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package_References.DestroyableBaseBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : DestroyableBaseBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package_References."=";
   subtype DestroyableBaseBehavior_Access_Array_Access_Array_Access is org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package_References.DestroyableBaseBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DestroyableBaseBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package_References."=";

   type DestroyableBaseBehavior is new Java_Object and DestroyableInterface with null record;
   instance : DestroyableBaseBehavior_Access;

   procedure Initialize (This : in out DestroyableBaseBehavior'Class);
   function Create return DestroyableBaseBehavior_Access;
   function getInstance return DestroyableBaseBehavior_Access;
   function getName (This : in out DestroyableBaseBehavior) return Unbounded_String;
   function isDestroyed (This : in out DestroyableBaseBehavior) return Boolean;
   procedure setDestroyed (This : in out DestroyableBaseBehavior; destroyed : Boolean);

end org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package;


