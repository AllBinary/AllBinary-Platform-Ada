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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;

package org.allbinary.game.layer.CollidableRTSBehavior_Package is

   package CollidableDestroyableDamageableBehavior_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;

   type CollidableRTSBehavior is tagged;
   type CollidableRTSBehavior_Access is access all CollidableRTSBehavior'Class;
   type CollidableRTSBehavior_Access_Array is array (Natural range <>) of CollidableRTSBehavior_Access;
   type CollidableRTSBehavior_Access_Array_Access is access all CollidableRTSBehavior_Access_Array;
   type CollidableRTSBehavior_Access_Array_Access_Array is array (Natural range <>) of CollidableRTSBehavior_Access_Array_Access;
   type CollidableRTSBehavior_Access_Array_Access_Array_Access is access all CollidableRTSBehavior_Access_Array_Access_Array;

   type CollidableRTSBehavior is new CollidableDestroyableDamageableBehavior with null record;

   procedure Initialize (This : in out CollidableRTSBehavior'Class; collidable : Boolean);
   function Create (collidable : Boolean) return CollidableRTSBehavior_Access;
   function isCollision (This : in out CollidableRTSBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return Boolean;
   procedure isCollision (This : in out CollidableRTSBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   procedure collide (This : in out CollidableRTSBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   procedure collideNone (This : in out CollidableRTSBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);

end org.allbinary.game.layer.CollidableRTSBehavior_Package;


