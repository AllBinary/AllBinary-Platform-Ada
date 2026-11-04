-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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

limited with org.allbinary.game.layer.CollidableRTSBehavior_Package;
package org.allbinary.game.layer.CollidableRTSBehavior_Package_References is
   type CollidableRTSBehavior_Access is access all org.allbinary.game.layer.CollidableRTSBehavior_Package.CollidableRTSBehavior'Class;
   type CollidableRTSBehavior_Access_Array is array (Natural range <>) of CollidableRTSBehavior_Access;
   type CollidableRTSBehavior_Access_Array_Access is access all CollidableRTSBehavior_Access_Array;
   type CollidableRTSBehavior_Access_Array_Access_Array is array (Natural range <>) of CollidableRTSBehavior_Access_Array_Access;
   type CollidableRTSBehavior_Access_Array_Access_Array_Access is access all CollidableRTSBehavior_Access_Array_Access_Array;
end org.allbinary.game.layer.CollidableRTSBehavior_Package_References;

with org.allbinary.game.layer.CollidableRTSBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;
limited with org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package_References;

package org.allbinary.game.layer.CollidableRTSBehavior_Package is

   package CollidableDestroyableDamageableBehavior_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;
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


   subtype CollidableRTSBehavior_Access is org.allbinary.game.layer.CollidableRTSBehavior_Package_References.CollidableRTSBehavior_Access;
   function "=" (Left, Right : CollidableRTSBehavior_Access) return Boolean renames org.allbinary.game.layer.CollidableRTSBehavior_Package_References."=";
   subtype CollidableRTSBehavior_Access_Array is org.allbinary.game.layer.CollidableRTSBehavior_Package_References.CollidableRTSBehavior_Access_Array;
   function "=" (Left, Right : CollidableRTSBehavior_Access_Array) return Boolean renames org.allbinary.game.layer.CollidableRTSBehavior_Package_References."=";
   subtype CollidableRTSBehavior_Access_Array_Access is org.allbinary.game.layer.CollidableRTSBehavior_Package_References.CollidableRTSBehavior_Access_Array_Access;
   function "=" (Left, Right : CollidableRTSBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.layer.CollidableRTSBehavior_Package_References."=";
   subtype CollidableRTSBehavior_Access_Array_Access_Array is org.allbinary.game.layer.CollidableRTSBehavior_Package_References.CollidableRTSBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableRTSBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.CollidableRTSBehavior_Package_References."=";
   subtype CollidableRTSBehavior_Access_Array_Access_Array_Access is org.allbinary.game.layer.CollidableRTSBehavior_Package_References.CollidableRTSBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableRTSBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.CollidableRTSBehavior_Package_References."=";

   type CollidableRTSBehavior is new CollidableDestroyableDamageableBehavior with null record;

   procedure Initialize (This : in out CollidableRTSBehavior'Class; collidable : Boolean);
   function Create (collidable : Boolean) return CollidableRTSBehavior_Access;
   function isCollision (This : in out CollidableRTSBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return Boolean;
   procedure isCollision (This : in out CollidableRTSBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   procedure collide (This : in out CollidableRTSBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   procedure collideNone (This : in out CollidableRTSBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);

end org.allbinary.game.layer.CollidableRTSBehavior_Package;


