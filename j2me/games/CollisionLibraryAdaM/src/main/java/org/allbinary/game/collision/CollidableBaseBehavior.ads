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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.collision.CollidableInterface_Package; use org.allbinary.game.collision.CollidableInterface_Package;

package org.allbinary.game.collision.CollidableBaseBehavior_Package is

   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type CollidableBaseBehavior is tagged;
   type CollidableBaseBehavior_Access is access all CollidableBaseBehavior'Class;
   type CollidableBaseBehavior_Access_Array is array (Natural range <>) of CollidableBaseBehavior_Access;
   type CollidableBaseBehavior_Access_Array_Access is access all CollidableBaseBehavior_Access_Array;

   type CollidableBaseBehavior is new CollidableInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      layerCollisionUtil : LayerCollisionUtil_Access;
      collidable : Boolean;
   end record;

   procedure Initialize (This : in out CollidableBaseBehavior'Class; collidable : Boolean);
   function Create (collidable : Boolean) return CollidableBaseBehavior_Access;
   procedure update (This : in out CollidableBaseBehavior);
   function getName (This : in out CollidableBaseBehavior) return Unbounded_String;
   procedure getName (This : in out CollidableBaseBehavior);
   procedure setCollidable (This : in out CollidableBaseBehavior; collidable : Boolean);
   function isCollidable (This : in out CollidableBaseBehavior; ownerLayer : CollidableCompositeLayer_Access) return Boolean;
   procedure isCollidable (This : in out CollidableBaseBehavior; ownerLayer : CollidableCompositeLayer_Access);
   procedure collide (This : in out CollidableBaseBehavior; ownerLayer : CollidableCompositeLayer_Access; allbinaryCollidableLayer : CollidableCompositeLayer_Access);
   function isCollision (This : in out CollidableBaseBehavior; ownerLayer : CollidableCompositeLayer_Access; collisionLayer : CollidableCompositeLayer_Access) return Boolean;
   procedure isCollision (This : in out CollidableBaseBehavior; ownerLayer : CollidableCompositeLayer_Access; collisionLayer : CollidableCompositeLayer_Access);
   function isCollisionInterface (This : in out CollidableBaseBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access) return Boolean;
   procedure isCollisionInterface (This : in out CollidableBaseBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access);
   procedure collideInterface (This : in out CollidableBaseBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access);
   procedure paint (This : in out CollidableBaseBehavior; ownerLayer : CollidableCompositeLayer_Access; graphics : Graphics_Access);
   function getCollisionTypeWith (This : in out CollidableBaseBehavior; layerInterface : AllBinaryLayer_Access) return CollisionType_Access;
   procedure getCollisionTypeWith (This : in out CollidableBaseBehavior; layerInterface : AllBinaryLayer_Access);

end org.allbinary.game.collision.CollidableBaseBehavior_Package;


