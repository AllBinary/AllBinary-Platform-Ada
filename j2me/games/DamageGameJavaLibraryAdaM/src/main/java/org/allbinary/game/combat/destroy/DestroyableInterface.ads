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

limited with org.allbinary.game.combat.destroy.DestroyableInterface_Package;
package org.allbinary.game.combat.destroy.DestroyableInterface_Package_References is
   type DestroyableInterface_Access is access all org.allbinary.game.combat.destroy.DestroyableInterface_Package.DestroyableInterface'Class;
   type DestroyableInterface_Access_Array is array (Natural range <>) of DestroyableInterface_Access;
   type DestroyableInterface_Access_Array_Access is access all DestroyableInterface_Access_Array;
   type DestroyableInterface_Access_Array_Access_Array is array (Natural range <>) of DestroyableInterface_Access_Array_Access;
   type DestroyableInterface_Access_Array_Access_Array_Access is access all DestroyableInterface_Access_Array_Access_Array;
end org.allbinary.game.combat.destroy.DestroyableInterface_Package_References;

with org.allbinary.game.combat.destroy.DestroyableInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.layer.NamedInterface_Package; use org.allbinary.layer.NamedInterface_Package;

package org.allbinary.game.combat.destroy.DestroyableInterface_Package is

   package NamedInterface_Package renames Standard.org.allbinary.layer.NamedInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type DestroyableInterface is interface and NamedInterface;
   subtype DestroyableInterface_Access is org.allbinary.game.combat.destroy.DestroyableInterface_Package_References.DestroyableInterface_Access;
   function "=" (Left, Right : DestroyableInterface_Access) return Boolean renames org.allbinary.game.combat.destroy.DestroyableInterface_Package_References."=";
   subtype DestroyableInterface_Access_Array is org.allbinary.game.combat.destroy.DestroyableInterface_Package_References.DestroyableInterface_Access_Array;
   function "=" (Left, Right : DestroyableInterface_Access_Array) return Boolean renames org.allbinary.game.combat.destroy.DestroyableInterface_Package_References."=";
   subtype DestroyableInterface_Access_Array_Access is org.allbinary.game.combat.destroy.DestroyableInterface_Package_References.DestroyableInterface_Access_Array_Access;
   function "=" (Left, Right : DestroyableInterface_Access_Array_Access) return Boolean renames org.allbinary.game.combat.destroy.DestroyableInterface_Package_References."=";
   subtype DestroyableInterface_Access_Array_Access_Array is org.allbinary.game.combat.destroy.DestroyableInterface_Package_References.DestroyableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DestroyableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.destroy.DestroyableInterface_Package_References."=";
   subtype DestroyableInterface_Access_Array_Access_Array_Access is org.allbinary.game.combat.destroy.DestroyableInterface_Package_References.DestroyableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DestroyableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.destroy.DestroyableInterface_Package_References."=";
   function Java_Object_Access_From_DestroyableInterface (Value : DestroyableInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function isDestroyed (This : in out DestroyableInterface) return Boolean is abstract;

end org.allbinary.game.combat.destroy.DestroyableInterface_Package;


