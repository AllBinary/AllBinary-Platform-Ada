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


   procedure Initialize (This : in out PickupLayer'Class; name : Unbounded_String; remoteInfo_Param : access RemoteInfo'Class; total : Integer; pickedUpLayerInterfaceFactoryInterface_Param : access PickedUpLayerInterfaceFactoryInterface'Class; animationInterface_Param : access Animation'Class; rectangle_Param : access Rectangle'Class; viewPosition_Param : access ViewPositionBase'Class) is
      remoteInfo : RemoteInfo_Access := RemoteInfo_Access (remoteInfo_Param);
      pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface_Access := PickedUpLayerInterfaceFactoryInterface_Access (pickedUpLayerInterfaceFactoryInterface_Param);
      animationInterface : Animation_Access := Animation_Access (animationInterface_Param);
      rectangle : Rectangle_Access := Rectangle_Access (rectangle_Param);
      viewPosition : ViewPositionBase_Access := ViewPositionBase_Access (viewPosition_Param);
   begin
        MultiPlayerGameLayer_Package.Initialize (This, remoteInfo, BasicGroupFactory_Package.getInstance.NONE_ARRAY, name, rectangle, viewPosition);
        Initialize_Fields (This);
        This.setCollidableInferface (CollidableAlwaysPickupNeverCollideBehaviorFactory_Package.getInstance.createBehavior);
        This.setLayerWidth (10);
        This.setLayerHeight (10);
        This.init (pickedUpLayerInterfaceFactoryInterface, animationInterface);
   end Initialize;

   function Create (name : Unbounded_String; remoteInfo_Param : access RemoteInfo'Class; total : Integer; pickedUpLayerInterfaceFactoryInterface_Param : access PickedUpLayerInterfaceFactoryInterface'Class; animationInterface_Param : access Animation'Class; rectangle_Param : access Rectangle'Class; viewPosition_Param : access ViewPositionBase'Class) return PickupLayer_Access is
      This : constant PickupLayer_Access := new PickupLayer;
   begin
      PickupLayer_Package.Initialize (This.all, name, remoteInfo_Param, total, pickedUpLayerInterfaceFactoryInterface_Param, animationInterface_Param, rectangle_Param, viewPosition_Param);
      return This;
   end Create;

   procedure init (This : in out PickupLayer; pickedUpLayerInterfaceFactoryInterface_Param : access PickedUpLayerInterfaceFactoryInterface'Class; animationInterface_Param : access Animation'Class) is
      pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface_Access := PickedUpLayerInterfaceFactoryInterface_Access (pickedUpLayerInterfaceFactoryInterface_Param);
      animationInterface : Animation_Access := Animation_Access (animationInterface_Param);
   begin
        This.pickedUpLayerInterfaceFactoryInterface := pickedUpLayerInterfaceFactoryInterface;
        This.animationInterface := animationInterface;
        This.setDestroyed (False);
   end init;

   procedure initXYZ (This : in out PickupLayer; x : Integer; y : Integer; z : Integer) is
   begin
        This.setPosition (x, y, z);
   end initXYZ;

   procedure paint (This : in out PickupLayer; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      viewPosition : ViewPositionBase_Access;
      viewX : Integer;
      viewY : Integer;
   begin
        viewPosition := This.getViewPosition;
        viewX := viewPosition.getX;
        viewY := viewPosition.getY;
        This.animationInterface.paintXY (graphics, viewX, viewY);
   end paint;

   procedure paintThreed (This : in out PickupLayer; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
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
            DestroyedLayerProcessor_Package.getInstance.add (PickupLayer_Access'(This'Unchecked_Access));
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
   procedure set (This : in out PickupLayer; gl_Param : access GL'Class) is
      gl : GL_Access := GL_Access (gl_Param);
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


