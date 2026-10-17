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


package body org.allbinary.game.collision.CollidableNeverCollideBehavior_Package is

   procedure Initialize_Fields (This : in out CollidableNeverCollideBehavior'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CollidableNeverCollideBehavior'Class; isCollidable : Boolean) is
   begin
        CollidableBaseBehavior_Package.Initialize (This, isCollidable);
   end Initialize;

   function Create (isCollidable : Boolean) return CollidableNeverCollideBehavior_Access is
      This : constant CollidableNeverCollideBehavior_Access := new CollidableNeverCollideBehavior;
   begin
      CollidableNeverCollideBehavior_Package.Initialize (This.all, isCollidable);
      return This;
   end Create;

   function isCollision (This : in out CollidableNeverCollideBehavior; ownerLayer_Param : access CollidableCompositeLayer'Class; allbinaryCollidableLayer_Param : access CollidableCompositeLayer'Class) return Boolean is
      ownerLayer : CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
      allbinaryCollidableLayer : CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (allbinaryCollidableLayer_Param);
   begin
        return False;
   end isCollision;

   --  throws Exception
   procedure collide (This : in out CollidableNeverCollideBehavior; ownerLayer_Param : access CollidableCompositeLayer'Class; allbinaryCollidableLayer_Param : access CollidableCompositeLayer'Class) is
      ownerLayer : CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
      allbinaryCollidableLayer : CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (allbinaryCollidableLayer_Param);
   begin
        null;
   end collide;

   procedure collideInterface (This : in out CollidableNeverCollideBehavior; ownerLayer_Param : access CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface'Class) is
      ownerLayer : CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
      collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access := CollidableInterfaceCompositeInterface_Access (collidableInterfaceCompositeInterface_Param);
   begin
        null;
   end collideInterface;

   function isCollisionInterface (This : in out CollidableNeverCollideBehavior; ownerLayer_Param : access CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface'Class) return Boolean is
      ownerLayer : CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
      collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access := CollidableInterfaceCompositeInterface_Access (collidableInterfaceCompositeInterface_Param);
   begin
        return False;
   end isCollisionInterface;

   procedure isCollision (This : in out CollidableNeverCollideBehavior; ownerLayer_Param : access CollidableCompositeLayer'Class; allbinaryCollidableLayer_Param : access CollidableCompositeLayer'Class) is
      Java_Result : constant Boolean := CollidableNeverCollideBehavior'Class (This).isCollision (ownerLayer_Param, allbinaryCollidableLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollision;

   procedure isCollisionInterface (This : in out CollidableNeverCollideBehavior; ownerLayer_Param : access CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface'Class) is
      Java_Result : constant Boolean := CollidableNeverCollideBehavior'Class (This).isCollisionInterface (ownerLayer_Param, collidableInterfaceCompositeInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollisionInterface;

end org.allbinary.game.collision.CollidableNeverCollideBehavior_Package;


