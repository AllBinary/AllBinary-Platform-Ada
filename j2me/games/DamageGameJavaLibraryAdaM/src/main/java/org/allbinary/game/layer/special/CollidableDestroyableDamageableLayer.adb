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


with org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package; use org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package;
with org.allbinary.game.identification.BasicGroupFactory_Package; use org.allbinary.game.identification.BasicGroupFactory_Package;
with org.allbinary.game.part.PartInterfaceUtil_Package; use org.allbinary.game.part.PartInterfaceUtil_Package;
with org.allbinary.graphics.RectangleFactory_Package; use org.allbinary.graphics.RectangleFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.math.PositionStrings_Package; use org.allbinary.math.PositionStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package body org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package is

   package CollidableNeverCollideBehaviorFactory_Package renames Standard.org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory_Package;
   package BasicGroupFactory_Package renames Standard.org.allbinary.game.identification.BasicGroupFactory_Package;
   package PartInterfaceUtil_Package renames Standard.org.allbinary.game.part.PartInterfaceUtil_Package;
   package RectangleFactory_Package renames Standard.org.allbinary.graphics.RectangleFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package PositionStrings_Package renames Standard.org.allbinary.math.PositionStrings_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out CollidableDestroyableDamageableLayer'Class) is
   begin
      null;
      
      This.readyForExplosion_Case := False;
      
      
      This.initX := 0;
      This.initY := 0;
      This.initZ := 0;
      This.partInterfaceArrayP := PartInterfaceUtil_Package.getZeroArray;
      
      This.allBinaryGameLayerManagerP := AllBinaryGameLayerManager_Package.getNullInstance;
      This.isDraggable := False;
      This.isDragged := False;
      This.isDropped := False;
   end Initialize_Fields;


   function getNullInstance return CollidableDestroyableDamageableLayer_Access is
   begin
        if (CollidableDestroyableDamageableLayer_Package.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            CollidableDestroyableDamageableLayer_Package.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER := CollidableDestroyableDamageableLayer_Package.Create (BasicGroupFactory_Package.getInstance.NONE_ARRAY, StringUtil_Package.getInstance.EMPTY_STRING, RectangleFactory_Package.SINGLETON, ViewPositionBase_Package.NULL_VIEW_POSITION);
        end if;
        return CollidableDestroyableDamageableLayer_Access (CollidableDestroyableDamageableLayer_Package.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER);
   end getNullInstance;

   procedure Initialize (This : in out CollidableDestroyableDamageableLayer'Class; groupInterface : Group_Access_Array_Access; name : Unbounded_String; layerInfo_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) is
      layerInfo : constant Rectangle_Access := Rectangle_Access (layerInfo_Param);
      viewPosition : constant ViewPositionBase_Access := ViewPositionBase_Access (viewPosition_Param);
   begin
        CollidableCompositeLayer_Package.Initialize (This, name, layerInfo, viewPosition, CollidableNeverCollideBehaviorFactory_Package.getInstance);
        Initialize_Fields (This);
        This.initWidth := layerInfo.getWidth;
        This.initHeight := layerInfo.getHeight;
        This.groupInterface := groupInterface;
        This.pickupBehavior := PickupBehavior_Package.getNullInstance;
   end Initialize;

   function Create (groupInterface : Group_Access_Array_Access; name : Unbounded_String; layerInfo_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return CollidableDestroyableDamageableLayer_Access is
      This : constant CollidableDestroyableDamageableLayer_Access := new CollidableDestroyableDamageableLayer;
   begin
      CollidableDestroyableDamageableLayer_Package.Initialize (This.all, groupInterface, name, layerInfo_Param, viewPosition_Param);
      return This;
   end Create;

   --  throws Exception
   procedure initPosition (This : in out CollidableDestroyableDamageableLayer) is
   begin
        CollidableDestroyableDamageableLayer'Class (This).setPosition (This.initX, This.initY, This.initZ);
   end initPosition;

   --  throws Exception
   procedure initPositionXYZ (This : in out CollidableDestroyableDamageableLayer; x : Integer; y : Integer; z : Integer) is
   begin
        This.initX := x;
        This.initY := y;
        This.initZ := z;
   end initPositionXYZ;

   procedure paint (This : in out CollidableDestroyableDamageableLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        CollidableCompositeLayer (This).paint (graphics);
   end paint;

   --  throws Exception
   procedure damage (This : in out CollidableDestroyableDamageableLayer; damage : Integer; damageType : Integer) is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end damage;

   --  throws Exception
   function getDamage (This : in out CollidableDestroyableDamageableLayer; damageType : Integer) return Integer is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
        return 0;
   end getDamage;

   --  throws Exception
   function isDestroyed (This : in out CollidableDestroyableDamageableLayer) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
        return False;
   end isDestroyed;

   function getGroupInterface (This : in out CollidableDestroyableDamageableLayer) return Group_Access_Array_Access is
   begin
        return This.groupInterface;
   end getGroupInterface;

   procedure setGroupInterface (This : in out CollidableDestroyableDamageableLayer; teamInterface : Group_Access_Array_Access) is
   begin
        This.groupInterface := teamInterface;
   end setGroupInterface;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out CollidableDestroyableDamageableLayer; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) is
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
   begin
        This.allBinaryGameLayerManagerP := allBinaryGameLayerManager;
        if (This.allBinaryGameLayerManagerP) = (null) then
            Java_Throw (Java_New_Exception ("RuntimeException"));
        end if;
   end setAllBinaryGameLayerManager;

   function isReadyForExplosion (This : in out CollidableDestroyableDamageableLayer) return Boolean is
   begin
        return This.readyForExplosion_Case;
   end isReadyForExplosion;

   procedure setReadyForExplosion (This : in out CollidableDestroyableDamageableLayer; isReadyForExplosion : Boolean) is
   begin
        This.readyForExplosion_Case := isReadyForExplosion;
   end setReadyForExplosion;

   function getInitWidth (This : in out CollidableDestroyableDamageableLayer) return Integer is
   begin
        return This.initWidth;
   end getInitWidth;

   function getInitHeight (This : in out CollidableDestroyableDamageableLayer) return Integer is
   begin
        return This.initHeight;
   end getInitHeight;

   function getInitX (This : in out CollidableDestroyableDamageableLayer) return Integer is
   begin
        return This.initX;
   end getInitX;

   function getInitY (This : in out CollidableDestroyableDamageableLayer) return Integer is
   begin
        return This.initY;
   end getInitY;

   --  throws Exception
   procedure up (This : in out CollidableDestroyableDamageableLayer) is
   begin
        null;
   end up;

   --  throws Exception
   procedure down (This : in out CollidableDestroyableDamageableLayer) is
   begin
        null;
   end down;

   --  throws Exception
   procedure right (This : in out CollidableDestroyableDamageableLayer) is
   begin
        null;
   end right;

   --  throws Exception
   procedure left (This : in out CollidableDestroyableDamageableLayer) is
   begin
        null;
   end left;

   --  throws Exception
   procedure strafeLeft (This : in out CollidableDestroyableDamageableLayer) is
   begin
        null;
   end strafeLeft;

   --  throws Exception
   procedure strafeRight (This : in out CollidableDestroyableDamageableLayer) is
   begin
        null;
   end strafeRight;

   --  throws Exception
   procedure fire (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end fire;

   --  throws Exception
   procedure special1 (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end special1;

   --  throws Exception
   procedure special2 (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end special2;

   --  throws Exception
   procedure special3 (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end special3;

   --  throws Exception
   procedure special4 (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end special4;

   --  throws Exception
   procedure special5 (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end special5;

   --  throws Exception
   procedure upAnalog (This : in out CollidableDestroyableDamageableLayer; yAnalogValue : Integer) is
   begin
        null;
   end upAnalog;

   --  throws Exception
   procedure downAnalog (This : in out CollidableDestroyableDamageableLayer; yAnalogValue : Integer) is
   begin
        null;
   end downAnalog;

   --  throws Exception
   procedure rightAnalog (This : in out CollidableDestroyableDamageableLayer; xAnalogValue : Integer) is
   begin
        null;
   end rightAnalog;

   --  throws Exception
   procedure leftAnalog (This : in out CollidableDestroyableDamageableLayer; xAnalogValue : Integer) is
   begin
        null;
   end leftAnalog;

   --  throws Exception
   procedure rightTrigger (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class; xAnalogValue : Integer) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end rightTrigger;

   --  throws Exception
   procedure leftTrigger (This : in out CollidableDestroyableDamageableLayer; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class; xAnalogValue : Integer) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        null;
   end leftTrigger;

   procedure onDestroyed (This : in out CollidableDestroyableDamageableLayer; destroyedEvent_Param : access DestroyedEvent_Package.DestroyedEvent'Class) is
      destroyedEvent : constant DestroyedEvent_Access := DestroyedEvent_Access (destroyedEvent_Param);
   begin
        null;
   end onDestroyed;

   function getPickupBehavior (This : in out CollidableDestroyableDamageableLayer) return PickupBehavior_Access is
   begin
        return This.pickupBehavior;
   end getPickupBehavior;

   procedure setPickupBehavior (This : in out CollidableDestroyableDamageableLayer; pickupBehavior_Param : access PickupBehavior_Package.PickupBehavior'Class) is
      pickupBehavior : constant PickupBehavior_Access := PickupBehavior_Access (pickupBehavior_Param);
   begin
        This.pickupBehavior := pickupBehavior;
   end setPickupBehavior;

   --  throws Exception
   procedure addPart (This : in out CollidableDestroyableDamageableLayer; pickedUpLayerInterfaceFactoryInterface_Param : access PickedUpLayerInterfaceFactoryInterface_Package.PickedUpLayerInterfaceFactoryInterface'Class) is
      pickedUpLayerInterfaceFactoryInterface : constant PickedUpLayerInterfaceFactoryInterface_Access := PickedUpLayerInterfaceFactoryInterface_Access (pickedUpLayerInterfaceFactoryInterface_Param);
   begin
        null;
   end addPart;

   procedure setPartInterfaceArray (This : in out CollidableDestroyableDamageableLayer; partInterfaceArray : PartInterface_Access_Array_Access) is
   begin
        This.partInterfaceArrayP := partInterfaceArray;
   end setPartInterfaceArray;

   function getPartInterfaceArray (This : in out CollidableDestroyableDamageableLayer) return PartInterface_Access_Array_Access is
   begin
        return This.partInterfaceArrayP;
   end getPartInterfaceArray;

   procedure toStringAppend (This : in out CollidableDestroyableDamageableLayer; stringBuffer_Param : access StringMaker_Package.StringMaker'Class) is
      stringBuffer : constant StringMaker_Access := StringMaker_Access (stringBuffer_Param);
      commonSeps : CommonSeps_Access;
      positionStrings : PositionStrings_Access;
      groupInterfaceArray : Group_Access_Array_Access;
      size : Integer;
      index : Integer;
      pickupBehavior : PickupBehavior_Access;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        positionStrings := PositionStrings_Package.getInstance;
        CollidableCompositeLayer (This).toStringAppend (stringBuffer);
        stringBuffer.append (commonSeps.NEW_LINE);
        groupInterfaceArray := CollidableDestroyableDamageableLayer'Class (This).getGroupInterface;
        size := groupInterfaceArray'Length;
        for index in 0 .. (size) - 1 loop
            stringBuffer.append (groupInterfaceArray (index).toString);
            stringBuffer.append (commonSeps.COMMA);
        end loop;
        pickupBehavior := CollidableDestroyableDamageableLayer'Class (This).getPickupBehavior;
        if (pickupBehavior) /= (null) then
            stringBuffer.append (commonSeps.NEW_LINE);
            stringBuffer.append (pickupBehavior.toString);
        end if;
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (CollidableDestroyableDamageableLayer_Package.READYFOREXPLOSION);
        stringBuffer.appendboolean (This.readyForExplosion_Case);
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (This.commonStrings.INIT);
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (positionStrings.X_LABEL);
        stringBuffer.appendint (This.initX);
        stringBuffer.append (positionStrings.Y_LABEL);
        stringBuffer.appendint (This.initX);
        stringBuffer.append (positionStrings.Z_LABEL);
        stringBuffer.appendint (This.initZ);
   end toStringAppend;

   function toString (This : in out CollidableDestroyableDamageableLayer) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        CollidableDestroyableDamageableLayer'Class (This).toStringAppend (stringBuffer);
        return stringBuffer.toString;
   end toString;

   procedure getDamage (This : in out CollidableDestroyableDamageableLayer; damageType : Integer) is
      Java_Result : constant Integer := CollidableDestroyableDamageableLayer'Class (This).getDamage (damageType => damageType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamage;

begin
   null;
   NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER := NullUtil_Package.getInstance.NULL_OBJECT;
   READYFOREXPLOSION := To_Unbounded_String ("ReadyForExplosion: ");

end org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;


