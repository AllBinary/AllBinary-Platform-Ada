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


with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInput_Package_References;
with org.allbinary.game.terrain.BasicTerrainInfo_Package; use org.allbinary.game.terrain.BasicTerrainInfo_Package;
with org.allbinary.game.terrain.BasicTerrainInfo_Package_References;
with org.allbinary.game.terrain.TerrainEvent_Package; use org.allbinary.game.terrain.TerrainEvent_Package;
with org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package; use org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package;
with org.allbinary.game.terrain.TerrainEventHandler_Package; use org.allbinary.game.terrain.TerrainEventHandler_Package;
with org.allbinary.game.terrain.TerrainEventListener_Package; use org.allbinary.game.terrain.TerrainEventListener_Package;
with org.allbinary.game.terrain.TerrainEventListener_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.math.Angle_Package; use org.allbinary.math.Angle_Package;
with org.allbinary.math.Angle_Package_References;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.ai.ArtificialIntelligence_Package;
with org.allbinary.logic.util.cache.BaseCircularPool_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package;
with org.allbinary.game.ai.BasicAI_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with org.allbinary.util.CircularIndexUtil_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with org.allbinary.direction.Direction_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.math.FrameUtil_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.GameKeyEventSourceInterface_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.identification.Group_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.allbinary.game.input.Input_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEventHandler_Package;
with org.allbinary.layer.event.LayerManagerEventListener_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package;
with org.allbinary.layer.LayerProcessor_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.math.NamedAngle_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.graphics.Rectangle_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.game.tracking.TrackingEvent_Package;
with org.allbinary.TsUtil_Package;
with org.microemu.device.ui.UIFactory_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package is

   package TerrainEvent_Package renames Standard.org.allbinary.game.terrain.TerrainEvent_Package;
   package TerrainEventCircularStaticPool_Package renames Standard.org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package;
   package TerrainEventHandler_Package renames Standard.org.allbinary.game.terrain.TerrainEventHandler_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   subtype GameInput_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access;
   function "=" (Left, Right : GameInput_Access) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype GameInput_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array;
   function "=" (Left, Right : GameInput_Access_Array) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype GameInput_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access;
   function "=" (Left, Right : GameInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype GameInput_Access_Array_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array;
   function "=" (Left, Right : GameInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype GameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype BasicTerrainInfo_Access is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access;
   function "=" (Left, Right : BasicTerrainInfo_Access) return Boolean renames org.allbinary.game.terrain.BasicTerrainInfo_Package_References."=";
   subtype BasicTerrainInfo_Access_Array is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array;
   function "=" (Left, Right : BasicTerrainInfo_Access_Array) return Boolean renames org.allbinary.game.terrain.BasicTerrainInfo_Package_References."=";
   subtype BasicTerrainInfo_Access_Array_Access is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array_Access;
   function "=" (Left, Right : BasicTerrainInfo_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.BasicTerrainInfo_Package_References."=";
   subtype BasicTerrainInfo_Access_Array_Access_Array is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array_Access_Array;
   function "=" (Left, Right : BasicTerrainInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.game.terrain.BasicTerrainInfo_Package_References."=";
   subtype BasicTerrainInfo_Access_Array_Access_Array_Access is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicTerrainInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.BasicTerrainInfo_Package_References."=";
   subtype TerrainEventListener_Access is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access;
   function "=" (Left, Right : TerrainEventListener_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventListener_Package_References."=";
   subtype TerrainEventListener_Access_Array is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array;
   function "=" (Left, Right : TerrainEventListener_Access_Array) return Boolean renames org.allbinary.game.terrain.TerrainEventListener_Package_References."=";
   subtype TerrainEventListener_Access_Array_Access is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array_Access;
   function "=" (Left, Right : TerrainEventListener_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventListener_Package_References."=";
   subtype TerrainEventListener_Access_Array_Access_Array is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array_Access_Array;
   function "=" (Left, Right : TerrainEventListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.terrain.TerrainEventListener_Package_References."=";
   subtype TerrainEventListener_Access_Array_Access_Array_Access is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TerrainEventListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventListener_Package_References."=";
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
   subtype Angle_Access is org.allbinary.math.Angle_Package_References.Angle_Access;
   function "=" (Left, Right : Angle_Access) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   subtype Angle_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array;
   function "=" (Left, Right : Angle_Access_Array) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   subtype Angle_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access;
   function "=" (Left, Right : Angle_Access_Array_Access) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   subtype Angle_Access_Array_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array;
   function "=" (Left, Right : Angle_Access_Array_Access_Array) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   subtype Angle_Access_Array_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Angle_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   procedure Initialize_Fields (This : in out TerrainPatrolAI'Class) is
   begin
      null;
      This.terrainEventListener := TerrainEventListener_Package.Create;
      This.DOWN := Angle_Access (AngleFactory_Package.getInstance.DOWN);
      This.CLIFF := BasicTerrainInfo_Package.Create (This.DOWN);
   end Initialize_Fields;


   procedure Initialize (This : in out TerrainPatrolAI'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
   begin
        PacePatrolAI_Package.Initialize (This, hashtable, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        TerrainEventHandler_Package.getInstance (ownerLayerInterface).addListener (This.terrainEventListener);
        This.terrainEventListener.onTerrainEvent (TerrainEventCircularStaticPool_Package.getInstance.getNext (This.CLIFF));
   end Initialize;

   function Create (hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return TerrainPatrolAI_Access is
      This : constant TerrainPatrolAI_Access := new TerrainPatrolAI;
   begin
      TerrainPatrolAI_Package.Initialize (This.all, hashtable_Param, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   procedure update (This : in out TerrainPatrolAI) is
   begin
        PacePatrolAI_Package.PacePatrolAI (This).update;
        TerrainPatrolAI'Class (This).changeDirectionIfCliffReached;
   end update;

   procedure changeDirectionIfCliffReached (This : in out TerrainPatrolAI) is
      list : BasicArrayList_Access;
      size : Integer;
      terrainEvent : TerrainEvent_Access;
      basicTerrainInfo : BasicTerrainInfo_Access;
      angle : Angle_Access;
      index : Integer;
   begin
        list := This.terrainEventListener.getList;
        size := list.size;
        for index in 0 .. (size) - 1 loop
            terrainEvent := TerrainEvent_Access (list.removeAt (index));
            basicTerrainInfo := terrainEvent.getBasicTerrainInfo;
            angle := basicTerrainInfo.getAngle;
            if (angle) = (This.DOWN) then
                TerrainPatrolAI'Class (This).nextDirection;
                if not (This.isFollowLimitedByTerrain) then
                    This.logUtil.putF (To_Unbounded_String ("Following Limited"), TerrainPatrolAI_Access'(This'Unchecked_Access), To_Unbounded_String ("onTerrainEvent"));
                    This.isFollowLimitedByTerrain := True;
                end if;
            end if;
        end loop;
   end changeDirectionIfCliffReached;

end org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package;


