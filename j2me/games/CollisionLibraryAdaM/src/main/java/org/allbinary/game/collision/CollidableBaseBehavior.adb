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


package body org.allbinary.game.collision.CollidableBaseBehavior_Package is

   procedure Initialize_Fields (This : in out CollidableBaseBehavior'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.layerCollisionUtil := LayerCollisionUtil_Package.getInstance;
      This.collidable := True;
   end Initialize_Fields;


   procedure Initialize (This : in out CollidableBaseBehavior'Class; collidable : Boolean) is
   begin
      Initialize_Fields (This);
        This.collidable := collidable;
   end Initialize;

   function Create (collidable : Boolean) return CollidableBaseBehavior_Access is
      This : constant CollidableBaseBehavior_Access := new CollidableBaseBehavior;
   begin
      CollidableBaseBehavior_Package.Initialize (This.all, collidable);
      return This;
   end Create;

   procedure update (This : in out CollidableBaseBehavior) is
   begin
        null;
   end update;

   function getName (This : in out CollidableBaseBehavior) return Unbounded_String is
   begin
        return To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag));
   end getName;

   procedure setCollidable (This : in out CollidableBaseBehavior; collidable : Boolean) is
   begin
        This.collidable := collidable;
   end setCollidable;

   function isCollidable (This : in out CollidableBaseBehavior; ownerLayer : CollidableCompositeLayer_Access) return Boolean is
   begin
        return This.collidable;
   end isCollidable;

   --  throws Exception
   procedure collide (This : in out CollidableBaseBehavior; ownerLayer : CollidableCompositeLayer_Access; allbinaryCollidableLayer : CollidableCompositeLayer_Access) is
   begin
        Java_Throw (Java_New_Exception ("Exception", StringMaker_Package.Create.append (This.commonStrings.NOT_IMPLEMENTED).append (CommonLabels_Package.getInstance.COLON_SEP).append (To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag))).toString));
   end collide;

   function isCollision (This : in out CollidableBaseBehavior; ownerLayer : CollidableCompositeLayer_Access; collisionLayer : CollidableCompositeLayer_Access) return Boolean is
   begin
        return This.layerCollisionUtil.isCollision (ownerLayer, collisionLayer);
   end isCollision;

   function isCollisionInterface (This : in out CollidableBaseBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access) return Boolean is
   begin
        return This.layerCollisionUtil.isCollision (ownerLayer, AllBinaryLayer_Access (collidableInterfaceCompositeInterface));
   end isCollisionInterface;

   --  throws Exception
   procedure collideInterface (This : in out CollidableBaseBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access) is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end collideInterface;

   procedure paint (This : in out CollidableBaseBehavior; ownerLayer : CollidableCompositeLayer_Access; graphics : Graphics_Access) is
   begin
        null;
   end paint;

   function getCollisionTypeWith (This : in out CollidableBaseBehavior; layerInterface : AllBinaryLayer_Access) return CollisionType_Access is
   begin
        return CollisionTypeFactory_Package.getInstance.NONE;
   end getCollisionTypeWith;

   procedure isCollidable (This : in out CollidableBaseBehavior; ownerLayer : CollidableCompositeLayer_Access) is
      Java_Result : constant Boolean := CollidableBaseBehavior'Class (This).isCollidable (ownerLayer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollidable;

   procedure isCollision (This : in out CollidableBaseBehavior; ownerLayer : CollidableCompositeLayer_Access; collisionLayer : CollidableCompositeLayer_Access) is
      Java_Result : constant Boolean := CollidableBaseBehavior'Class (This).isCollision (ownerLayer, collisionLayer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollision;

   procedure isCollisionInterface (This : in out CollidableBaseBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access) is
      Java_Result : constant Boolean := CollidableBaseBehavior'Class (This).isCollisionInterface (ownerLayer, collidableInterfaceCompositeInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCollisionInterface;

   procedure getCollisionTypeWith (This : in out CollidableBaseBehavior; layerInterface : AllBinaryLayer_Access) is
      Java_Result : constant CollisionType_Access := CollidableBaseBehavior'Class (This).getCollisionTypeWith (layerInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCollisionTypeWith;

end org.allbinary.game.collision.CollidableBaseBehavior_Package;


