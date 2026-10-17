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


package body org.allbinary.game.layer.pickup.PickupLayer_Package is

   procedure Initialize_Fields (This : in out PickupLayer'Class) is
   begin
      null;
      This.pickedUpLayerInterfaceFactoryInterface := CountedPickedUpLayerInterfaceFactory_Package.NULL_COUNTED_PICKUP_LAYER_FACTORY;
      This.destroyed := False;
      This.animationInterface := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
   end Initialize_Fields;


   procedure Initialize (This : in out PickupLayer'Class; name : Unbounded_String; remoteInfo : RemoteInfo_Access; total : Integer; pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface_Access; animationInterface : Animation_Access; rectangle : Rectangle_Access; viewPosition : ViewPositionBase_Access) is
   begin
        MultiPlayerGameLayer_Package.Initialize (This, remoteInfo, BasicGroupFactory_Package.getInstance.NONE_ARRAY, name, rectangle, viewPosition);
        Initialize_Fields (This);
        This.setCollidableInferface (CollidableAlwaysPickupNeverCollideBehaviorFactory_Package.getInstance.createBehavior);
        This.setLayerWidth (10);
        This.setLayerHeight (10);
        This.init (pickedUpLayerInterfaceFactoryInterface, animationInterface);
   end Initialize;

   function Create (name : Unbounded_String; remoteInfo : RemoteInfo_Access; total : Integer; pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface_Access; animationInterface : Animation_Access; rectangle : Rectangle_Access; viewPosition : ViewPositionBase_Access) return PickupLayer_Access is
      This : constant PickupLayer_Access := new PickupLayer;
   begin
      PickupLayer_Package.Initialize (This.all, name, remoteInfo, total, pickedUpLayerInterfaceFactoryInterface, animationInterface, rectangle, viewPosition);
      return This;
   end Create;

   procedure init (This : in out PickupLayer; pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface_Access; animationInterface : Animation_Access) is
   begin
        This.pickedUpLayerInterfaceFactoryInterface := pickedUpLayerInterfaceFactoryInterface;
        This.animationInterface := animationInterface;
        This.setDestroyed (False);
   end init;

   procedure initXYZ (This : in out PickupLayer; x : Integer; y : Integer; z : Integer) is
   begin
        This.setPosition (x, y, z);
   end initXYZ;

   procedure paint (This : in out PickupLayer; graphics : Graphics_Access) is
      viewPosition : ViewPositionBase_Access;
      viewX : Integer;
      viewY : Integer;
   begin
        viewPosition := This.getViewPosition;
        viewX := viewPosition.getX;
        viewY := viewPosition.getY;
        This.animationInterface.paintXY (graphics, viewX, viewY);
   end paint;

   procedure paintThreed (This : in out PickupLayer; graphics : Graphics_Access) is
      viewPosition : ViewPositionBase_Access;
      viewX : Integer;
      viewY : Integer;
   begin
        viewPosition := This.getViewPosition;
        viewX := viewPosition.getX;
        viewY := viewPosition.getY;
        This.animationInterface.paintThreedXYZ (graphics, viewX, viewY, 3);
   end paintThreed;

   function getPickedUpLayerInterfaceFactoryInterface (This : in out PickupLayer) return PickedUpLayerInterfaceFactoryInterface_Access is
   begin
        return This.pickedUpLayerInterfaceFactoryInterface;
   end getPickedUpLayerInterfaceFactoryInterface;

   procedure setPickedUp (This : in out PickupLayer) is
   begin
        This.setDestroyed (True);
   end setPickedUp;

   function isDestroyed (This : in out PickupLayer) return Boolean is
   begin
        return This.destroyed;
   end isDestroyed;

   procedure setDestroyed (This : in out PickupLayer; destroyed : Boolean) is
   begin
        This.destroyed := destroyed;
        if This.isDestroyed then
            DestroyedLayerProcessor_Package.getInstance.add (This'Unchecked_Access);
        end if;
   end setDestroyed;

   procedure damage (This : in out PickupLayer; damage : Integer; damageType : Integer) is
   begin
        null;
   end damage;

   function getDamage (This : in out PickupLayer; damageType : Integer) return Integer is
   begin
        return 0;
   end getDamage;

   --  throws Exception
   procedure set (This : in out PickupLayer; gl : GL_Access) is
      openGLSurfaceChangedInterface : OpenGLSurfaceChangedInterface_Access;
   begin
        openGLSurfaceChangedInterface := OpenGLSurfaceChangedInterface_Access (This.animationInterface);
        openGLSurfaceChangedInterface.set (gl);
   end set;

   procedure getDamage (This : in out PickupLayer; damageType : Integer) is
      Java_Result : constant Integer := PickupLayer'Class (This).getDamage (damageType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamage;

end org.allbinary.game.layer.pickup.PickupLayer_Package;


