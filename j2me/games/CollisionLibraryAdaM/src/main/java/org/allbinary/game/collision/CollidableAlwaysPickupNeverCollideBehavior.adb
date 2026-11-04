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


with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.game.collision.CollisionTypeFactory_Package; use org.allbinary.game.collision.CollisionTypeFactory_Package;
with org.allbinary.game.collision.CollisionType_Package; use org.allbinary.game.collision.CollisionType_Package;
with org.allbinary.game.collision.CollidableBaseBehavior_Package;
with org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package;
with org.allbinary.game.collision.CollidableBaseBehaviorFactoryInterface_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.collision.CollidableInterface_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.collision.CollidableNeverCollideBehavior_Package;
with org.allbinary.game.collision.CollisionProcessor_Package;
with org.allbinary.game.collision.CollisionType_Package;
with org.allbinary.game.collision.CollisionTypeFactory_Package;
with org.allbinary.game.collision.LayerCollisionUtil_Package;

package body org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package is

   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype CollisionType_Access is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access;
   function "=" (Left, Right : CollisionType_Access) return Boolean renames org.allbinary.game.collision.CollisionType_Package_References."=";
   subtype CollisionType_Access_Array is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access_Array;
   function "=" (Left, Right : CollisionType_Access_Array) return Boolean renames org.allbinary.game.collision.CollisionType_Package_References."=";
   subtype CollisionType_Access_Array_Access is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access_Array_Access;
   function "=" (Left, Right : CollisionType_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollisionType_Package_References."=";
   subtype CollisionType_Access_Array_Access_Array is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access_Array_Access_Array;
   function "=" (Left, Right : CollisionType_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollisionType_Package_References."=";
   subtype CollisionType_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollisionType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollisionType_Package_References."=";
   procedure Initialize_Fields (This : in out CollidableAlwaysPickupNeverCollideBehavior'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CollidableAlwaysPickupNeverCollideBehavior'Class) is
   begin
        CollidableNeverCollideBehavior_Package.Initialize (This, True);
   end Initialize;

   function Create return CollidableAlwaysPickupNeverCollideBehavior_Access is
      This : constant CollidableAlwaysPickupNeverCollideBehavior_Access := new CollidableAlwaysPickupNeverCollideBehavior;
   begin
      CollidableAlwaysPickupNeverCollideBehavior_Package.Initialize (This.all);
      return This;
   end Create;

   function getCollisionTypeWith (This : in out CollidableAlwaysPickupNeverCollideBehavior; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return CollisionType_Access is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        return CollisionType_Access (CollisionTypeFactory_Package.getInstance.PICKUP);
   end getCollisionTypeWith;

   procedure getCollisionTypeWith (This : in out CollidableAlwaysPickupNeverCollideBehavior; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant CollisionType_Access := CollidableAlwaysPickupNeverCollideBehavior'Class (This).getCollisionTypeWith (layerInterface_Param => layerInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCollisionTypeWith;

end org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package;


