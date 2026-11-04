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


with javax.microedition.khronos.opengles.GL_Package; use javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.khronos.opengles.GL_Package_References;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehaviorFactory_Package; use org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehaviorFactory_Package;
with org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package; use org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package;
with org.allbinary.game.identification.BasicGroupFactory_Package; use org.allbinary.game.identification.BasicGroupFactory_Package;
with org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package; use org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package; use org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
with org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package; use org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.ViewPositionBase_Package_References;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package; use org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References;

package body org.allbinary.game.layer.pickup.PickupLayer_Package is

   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package CollidableAlwaysPickupNeverCollideBehaviorFactory_Package renames Standard.org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehaviorFactory_Package;
   package DestroyedLayerProcessor_Package renames Standard.org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package;
   package BasicGroupFactory_Package renames Standard.org.allbinary.game.identification.BasicGroupFactory_Package;
   package OpenGLSurfaceChangedInterface_Package renames Standard.org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;
   subtype GL_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access;
   function "=" (Left, Right : GL_Access) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
   subtype GL_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array;
   function "=" (Left, Right : GL_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
   subtype GL_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access;
   function "=" (Left, Right : GL_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
   subtype GL_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array;
   function "=" (Left, Right : GL_Access_Array_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
   subtype GL_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GL_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL_Package_References."=";
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   function "=" (Left, Right : Animation_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   function "=" (Left, Right : Animation_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   function "=" (Left, Right : Animation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype RemoteInfo_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access;
   function "=" (Left, Right : RemoteInfo_Access) return Boolean renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References."=";
   subtype RemoteInfo_Access_Array is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array;
   function "=" (Left, Right : RemoteInfo_Access_Array) return Boolean renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References."=";
   subtype RemoteInfo_Access_Array_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access;
   function "=" (Left, Right : RemoteInfo_Access_Array_Access) return Boolean renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References."=";
   subtype RemoteInfo_Access_Array_Access_Array is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access_Array;
   function "=" (Left, Right : RemoteInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References."=";
   subtype RemoteInfo_Access_Array_Access_Array_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RemoteInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References."=";
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   function "=" (Left, Right : Rectangle_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype ViewPositionBase_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access;
   function "=" (Left, Right : ViewPositionBase_Access) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array;
   function "=" (Left, Right : ViewPositionBase_Access_Array) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access;
   function "=" (Left, Right : ViewPositionBase_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array;
   function "=" (Left, Right : ViewPositionBase_Access_Array_Access_Array) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ViewPositionBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype PickedUpLayerInterfaceFactoryInterface_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References."=";
   procedure Initialize_Fields (This : in out PickupLayer'Class) is
   begin
      null;
      This.pickedUpLayerInterfaceFactoryInterface := PickedUpLayerInterfaceFactoryInterface_Access (CountedPickedUpLayerInterfaceFactory_Package.NULL_COUNTED_PICKUP_LAYER_FACTORY);
      This.destroyed := False;
      This.animationInterface := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
   end Initialize_Fields;


   procedure Initialize (This : in out PickupLayer'Class; name : Unbounded_String; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; total : Integer; pickedUpLayerInterfaceFactoryInterface_Param : access PickedUpLayerInterfaceFactoryInterface_Package.PickedUpLayerInterfaceFactoryInterface'Class; animationInterface_Param : access Animation_Package.Animation'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) is
      remoteInfo : constant RemoteInfo_Access := RemoteInfo_Access (remoteInfo_Param);
      pickedUpLayerInterfaceFactoryInterface : constant PickedUpLayerInterfaceFactoryInterface_Access := PickedUpLayerInterfaceFactoryInterface_Access (pickedUpLayerInterfaceFactoryInterface_Param);
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
      viewPosition : constant ViewPositionBase_Access := ViewPositionBase_Access (viewPosition_Param);
   begin
        MultiPlayerGameLayer_Package.Initialize (This, remoteInfo, BasicGroupFactory_Package.getInstance.NONE_ARRAY, name, rectangle, viewPosition);
        Initialize_Fields (This);
        PickupLayer'Class (This).setCollidableInferface (CollidableAlwaysPickupNeverCollideBehaviorFactory_Package.getInstance.createBehavior);
        PickupLayer'Class (This).setLayerWidth (10);
        PickupLayer'Class (This).setLayerHeight (10);
        PickupLayer'Class (This).init (pickedUpLayerInterfaceFactoryInterface, animationInterface);
   end Initialize;

   function Create (name : Unbounded_String; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; total : Integer; pickedUpLayerInterfaceFactoryInterface_Param : access PickedUpLayerInterfaceFactoryInterface_Package.PickedUpLayerInterfaceFactoryInterface'Class; animationInterface_Param : access Animation_Package.Animation'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return PickupLayer_Access is
      This : constant PickupLayer_Access := new PickupLayer;
   begin
      PickupLayer_Package.Initialize (This.all, name, remoteInfo_Param, total, pickedUpLayerInterfaceFactoryInterface_Param, animationInterface_Param, rectangle_Param, viewPosition_Param);
      return This;
   end Create;

   procedure init (This : in out PickupLayer; pickedUpLayerInterfaceFactoryInterface_Param : access PickedUpLayerInterfaceFactoryInterface_Package.PickedUpLayerInterfaceFactoryInterface'Class; animationInterface_Param : access Animation_Package.Animation'Class) is
      pickedUpLayerInterfaceFactoryInterface : constant PickedUpLayerInterfaceFactoryInterface_Access := PickedUpLayerInterfaceFactoryInterface_Access (pickedUpLayerInterfaceFactoryInterface_Param);
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
   begin
        This.pickedUpLayerInterfaceFactoryInterface := pickedUpLayerInterfaceFactoryInterface;
        This.animationInterface := animationInterface;
        PickupLayer'Class (This).setDestroyed (False);
   end init;

   procedure initXYZ (This : in out PickupLayer; x : Integer; y : Integer; z : Integer) is
   begin
        PickupLayer'Class (This).setPosition (x, y, z);
   end initXYZ;

   procedure paint (This : in out PickupLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      viewPosition : ViewPositionBase_Access;
      viewX : Integer;
      viewY : Integer;
   begin
        viewPosition := PickupLayer'Class (This).getViewPosition;
        viewX := viewPosition.getX;
        viewY := viewPosition.getY;
        This.animationInterface.paintXY (graphics, viewX, viewY);
   end paint;

   procedure paintThreed (This : in out PickupLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      viewPosition : ViewPositionBase_Access;
      viewX : Integer;
      viewY : Integer;
   begin
        viewPosition := PickupLayer'Class (This).getViewPosition;
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
        PickupLayer'Class (This).setDestroyed (True);
   end setPickedUp;

   function isDestroyed (This : in out PickupLayer) return Boolean is
   begin
        return This.destroyed;
   end isDestroyed;

   procedure setDestroyed (This : in out PickupLayer; destroyed : Boolean) is
   begin
        This.destroyed := destroyed;
        if PickupLayer'Class (This).isDestroyed then
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
   procedure set (This : in out PickupLayer; gl_Param : access GL_Package.GL'Class) is
      gl : constant GL_Access := GL_Access (gl_Param);
      openGLSurfaceChangedInterface : OpenGLSurfaceChangedInterface_Access;
   begin
        openGLSurfaceChangedInterface := OpenGLSurfaceChangedInterface_Access (This.animationInterface);
        openGLSurfaceChangedInterface.set (gl);
   end set;

   procedure getDamage (This : in out PickupLayer; damageType : Integer) is
      Java_Result : constant Integer := PickupLayer'Class (This).getDamage (damageType => damageType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamage;

end org.allbinary.game.layer.pickup.PickupLayer_Package;


