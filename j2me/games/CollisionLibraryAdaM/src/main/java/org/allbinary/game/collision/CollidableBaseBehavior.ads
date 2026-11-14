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

with AllBinary_Java;
limited with org.allbinary.game.collision.CollidableBaseBehavior_Package;
package org.allbinary.game.collision.CollidableBaseBehavior_Package_References is
   type CollidableBaseBehavior_Access is access all org.allbinary.game.collision.CollidableBaseBehavior_Package.CollidableBaseBehavior'Class;
   type CollidableBaseBehavior_Access_Array is array (Natural range <>) of CollidableBaseBehavior_Access;
   type CollidableBaseBehavior_Access_Array_Access is access all CollidableBaseBehavior_Access_Array;
   type CollidableBaseBehavior_Access_Array_Access_Array is array (Natural range <>) of CollidableBaseBehavior_Access_Array_Access;
   type CollidableBaseBehavior_Access_Array_Access_Array_Access is access all CollidableBaseBehavior_Access_Array_Access_Array;
   type CollidableBaseBehavior_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableBaseBehavior_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableBaseBehavior_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableBaseBehavior_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableBaseBehavior_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableBaseBehavior_Access_Array_Access is (if Value /= null and then Value.all in CollidableBaseBehavior_Access_Array_Object'Class then CollidableBaseBehavior_Access_Array_Object'Class (Value.all).Value else null);
   type CollidableBaseBehavior_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableBaseBehavior_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableBaseBehavior_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableBaseBehavior_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableBaseBehavior_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableBaseBehavior_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CollidableBaseBehavior_Access_Array_Access_Array_Object'Class then CollidableBaseBehavior_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.collision.CollidableBaseBehavior_Package_References;

with org.allbinary.game.collision.CollidableBaseBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.game.collision.CollidableInterface_Package; use org.allbinary.game.collision.CollidableInterface_Package;
limited with org.allbinary.game.collision.LayerCollisionUtil_Package;
with org.allbinary.game.collision.LayerCollisionUtil_Package_References;
limited with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References;
limited with org.allbinary.game.collision.CollisionType_Package;
with org.allbinary.game.collision.CollisionType_Package_References;

package org.allbinary.game.collision.CollidableBaseBehavior_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
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
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype LayerCollisionUtil_Access is org.allbinary.game.collision.LayerCollisionUtil_Package_References.LayerCollisionUtil_Access;
   use type LayerCollisionUtil_Access;
   subtype LayerCollisionUtil_Access_Array is org.allbinary.game.collision.LayerCollisionUtil_Package_References.LayerCollisionUtil_Access_Array;
   use type LayerCollisionUtil_Access_Array;
   subtype LayerCollisionUtil_Access_Array_Access is org.allbinary.game.collision.LayerCollisionUtil_Package_References.LayerCollisionUtil_Access_Array_Access;
   use type LayerCollisionUtil_Access_Array_Access;
   subtype LayerCollisionUtil_Access_Array_Access_Array is org.allbinary.game.collision.LayerCollisionUtil_Package_References.LayerCollisionUtil_Access_Array_Access_Array;
   use type LayerCollisionUtil_Access_Array_Access_Array;
   subtype LayerCollisionUtil_Access_Array_Access_Array_Access is org.allbinary.game.collision.LayerCollisionUtil_Package_References.LayerCollisionUtil_Access_Array_Access_Array_Access;
   use type LayerCollisionUtil_Access_Array_Access_Array_Access;
   subtype CollidableInterfaceCompositeInterface_Access is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access;
   use type CollidableInterfaceCompositeInterface_Access;
   subtype CollidableInterfaceCompositeInterface_Access_Array is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array;
   use type CollidableInterfaceCompositeInterface_Access_Array;
   subtype CollidableInterfaceCompositeInterface_Access_Array_Access is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array_Access;
   use type CollidableInterfaceCompositeInterface_Access_Array_Access;
   subtype CollidableInterfaceCompositeInterface_Access_Array_Access_Array is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array_Access_Array;
   use type CollidableInterfaceCompositeInterface_Access_Array_Access_Array;
   subtype CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   use type CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   subtype CollisionType_Access is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access;
   use type CollisionType_Access;
   subtype CollisionType_Access_Array is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access_Array;
   use type CollisionType_Access_Array;
   subtype CollisionType_Access_Array_Access is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access_Array_Access;
   use type CollisionType_Access_Array_Access;
   subtype CollisionType_Access_Array_Access_Array is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access_Array_Access_Array;
   use type CollisionType_Access_Array_Access_Array;
   subtype CollisionType_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access_Array_Access_Array_Access;
   use type CollisionType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CollidableBaseBehavior_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access;
   function "=" (Left, Right : CollidableBaseBehavior_Access) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   subtype CollidableBaseBehavior_Access_Array is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array;
   function "=" (Left, Right : CollidableBaseBehavior_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   subtype CollidableBaseBehavior_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access;
   function "=" (Left, Right : CollidableBaseBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   function Java_Box (Value : CollidableBaseBehavior_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References.Java_Box;
   function Java_Unbox_CollidableBaseBehavior_Access_Array (Value : access Java_Object'Class) return CollidableBaseBehavior_Access_Array_Access renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References.Java_Unbox_CollidableBaseBehavior_Access_Array;
   subtype CollidableBaseBehavior_Access_Array_Access_Array is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableBaseBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   subtype CollidableBaseBehavior_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableBaseBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   function Java_Box (Value : CollidableBaseBehavior_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References.Java_Box;
   function Java_Unbox_CollidableBaseBehavior_Access_Array_Access_Array (Value : access Java_Object'Class) return CollidableBaseBehavior_Access_Array_Access_Array_Access renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References.Java_Unbox_CollidableBaseBehavior_Access_Array_Access_Array;

   type CollidableBaseBehavior is new Java_Object and CollidableInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      layerCollisionUtil : LayerCollisionUtil_Access;
      collidable : Boolean;
   end record;

   procedure Initialize (This : in out CollidableBaseBehavior'Class; collidable : Boolean);
   function Create (collidable : Boolean) return CollidableBaseBehavior_Access;
   procedure update (This : in out CollidableBaseBehavior);
   function getName (This : in out CollidableBaseBehavior) return Unbounded_String;
   procedure setCollidable (This : in out CollidableBaseBehavior; collidable : Boolean);
   function isCollidable (This : in out CollidableBaseBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return Boolean;
   procedure isCollidable (This : in out CollidableBaseBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   procedure collide (This : in out CollidableBaseBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; allbinaryCollidableLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   function isCollision (This : in out CollidableBaseBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collisionLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return Boolean;
   procedure isCollision (This : in out CollidableBaseBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collisionLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   function isCollisionInterface (This : in out CollidableBaseBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class) return Boolean;
   procedure isCollisionInterface (This : in out CollidableBaseBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class);
   procedure collideInterface (This : in out CollidableBaseBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class);
   procedure paint (This : in out CollidableBaseBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; graphics_Param : access Graphics_Package.Graphics'Class);
   function getCollisionTypeWith (This : in out CollidableBaseBehavior; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return CollisionType_Access;
   procedure getCollisionTypeWith (This : in out CollidableBaseBehavior; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.collision.CollidableBaseBehavior_Package;


