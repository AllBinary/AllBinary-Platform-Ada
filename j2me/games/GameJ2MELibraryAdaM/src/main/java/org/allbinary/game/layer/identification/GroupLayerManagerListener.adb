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


with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;
with org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package; use org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package;
with org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package; use org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package_References;
with org.allbinary.layer.event.LayerManagerEventHandler_Package; use org.allbinary.layer.event.LayerManagerEventHandler_Package;
with org.allbinary.layer.event.LayerManagerEventListener_Package; use org.allbinary.layer.event.LayerManagerEventListener_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.graphics.GPoint_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.graphics.Rectangle_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.TsUtil_Package;
with org.microemu.device.ui.UIFactory_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.game.layer.identification.GroupLayerManagerListener_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package LayerManagerEventHandler_Package renames Standard.org.allbinary.layer.event.LayerManagerEventHandler_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype Group_Access is org.allbinary.game.identification.Group_Package_References.Group_Access;
   function "=" (Left, Right : Group_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array;
   function "=" (Left, Right : Group_Access_Array) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access;
   function "=" (Left, Right : Group_Access_Array_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array;
   function "=" (Left, Right : Group_Access_Array_Access_Array) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Group_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype GroupInterfaceCompositeInterface_Access is org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References.GroupInterfaceCompositeInterface_Access;
   function "=" (Left, Right : GroupInterfaceCompositeInterface_Access) return Boolean renames org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References."=";
   subtype GroupInterfaceCompositeInterface_Access_Array is org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References.GroupInterfaceCompositeInterface_Access_Array;
   function "=" (Left, Right : GroupInterfaceCompositeInterface_Access_Array) return Boolean renames org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References."=";
   subtype GroupInterfaceCompositeInterface_Access_Array_Access is org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References.GroupInterfaceCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : GroupInterfaceCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References."=";
   subtype GroupInterfaceCompositeInterface_Access_Array_Access_Array is org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References.GroupInterfaceCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GroupInterfaceCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References."=";
   subtype GroupInterfaceCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References.GroupInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GroupInterfaceCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References."=";
   subtype LayerManagerEvent_Access is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access;
   function "=" (Left, Right : LayerManagerEvent_Access) return Boolean renames org.allbinary.layer.event.LayerManagerEvent_Package_References."=";
   subtype LayerManagerEvent_Access_Array is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array;
   function "=" (Left, Right : LayerManagerEvent_Access_Array) return Boolean renames org.allbinary.layer.event.LayerManagerEvent_Package_References."=";
   subtype LayerManagerEvent_Access_Array_Access is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array_Access;
   function "=" (Left, Right : LayerManagerEvent_Access_Array_Access) return Boolean renames org.allbinary.layer.event.LayerManagerEvent_Package_References."=";
   subtype LayerManagerEvent_Access_Array_Access_Array is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array_Access_Array;
   function "=" (Left, Right : LayerManagerEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.event.LayerManagerEvent_Package_References."=";
   subtype LayerManagerEvent_Access_Array_Access_Array_Access is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerManagerEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.event.LayerManagerEvent_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   procedure Initialize_Fields (This : in out GroupLayerManagerListener'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   function getInstance return GroupLayerManagerListener_Access is
   begin
        return GroupLayerManagerListener_Access (GroupLayerManagerListener_Package.SINGLETON);
   end getInstance;

   procedure Initialize (This : in out GroupLayerManagerListener'Class) is
   begin
      LayerManagerEventListener_Package.Initialize (This);
      Initialize_Fields (This);
        LayerManagerEventHandler_Package.getInstance.addListener (GroupLayerManagerListener_Access'(This'Unchecked_Access));
   end Initialize;

   function Create return GroupLayerManagerListener_Access is
      This : constant GroupLayerManagerListener_Access := new GroupLayerManagerListener;
   begin
      GroupLayerManagerListener_Package.Initialize (This.all);
      return This;
   end Create;

   procedure clear (This : in out GroupLayerManagerListener) is
      groupList : BasicArrayList_Access;
      size : Integer;
      index : Integer;
   begin
        groupList := null;
        size := This.list.size;
        for index in reverse 0 .. (size) - (1) loop
            groupList := BasicArrayList_Access (This.list.objectArray (index));
            groupList.clear;
        end loop;
   end clear;

   function getGroupSizeFromInterface (This : in out GroupLayerManagerListener; groupInterfaceCompositeInterface_Param : access GroupInterfaceCompositeInterface_Package.GroupInterfaceCompositeInterface'Class) return Integer is
      groupInterfaceCompositeInterface : constant GroupInterfaceCompositeInterface_Access := GroupInterfaceCompositeInterface_Access (groupInterfaceCompositeInterface_Param);
      groupInterfaceArray : Group_Access_Array_Access;
   begin
        groupInterfaceArray := groupInterfaceCompositeInterface.getGroupInterface;
        return GroupLayerManagerListener'Class (This).getGroupSize (groupInterfaceArray (0));
   end getGroupSizeFromInterface;

   function getGroupSize (This : in out GroupLayerManagerListener; groupInterface_Param : access Group_Package.Group'Class) return Integer is
      groupInterface : constant Group_Access := Group_Access (groupInterface_Param);
      id : Integer;
   begin
        id := Integer (groupInterface.getGroupId);
        return GroupLayerManagerListener'Class (This).getGroupSizeById (id);
   end getGroupSize;

   function getList (This : in out GroupLayerManagerListener; groupInterface_Param : access Group_Package.Group'Class) return BasicArrayList_Access is
      groupInterface : constant Group_Access := Group_Access (groupInterface_Param);
      id : Integer;
   begin
        id := Integer (groupInterface.getGroupId);
        return GroupLayerManagerListener'Class (This).getListById (id);
   end getList;

   function getListById (This : in out GroupLayerManagerListener; groupId : Integer) return BasicArrayList_Access is
      groupList : BasicArrayList_Access;
   begin
        groupList := BasicArrayList_Access (This.list.objectArray (groupId));
        return groupList;
   end getListById;

   function getGroupSizeById (This : in out GroupLayerManagerListener; groupId : Integer) return Integer is
      groupList : BasicArrayList_Access;
      size : Integer;
   begin
        groupList := BasicArrayList_Access (This.list.objectArray (groupId));
        size := groupList.size;
        return size;
   end getGroupSizeById;

   function areAllOtherGroupsEmpty (This : in out GroupLayerManagerListener; groupInterface_Param : access Group_Package.Group'Class) return Boolean is
      groupInterface : constant Group_Access := Group_Access (groupInterface_Param);
      id : Integer;
      size : Integer;
      groupSize : Integer;
      index : Integer;
   begin
        id := Integer (groupInterface.getGroupId);
        size := This.list.size;
        for index in reverse 0 .. (size) - (1) loop
            if (id) /= (index) then
                groupSize := GroupLayerManagerListener'Class (This).getGroupSizeById (index);
                if (groupSize) /= (0) then
                    This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Group Size: ")).appendint (groupSize).toString, GroupLayerManagerListener_Access'(This'Unchecked_Access), To_Unbounded_String ("areAllOtherGroupsEmpty"));
                    return False;
                end if;
            end if;
        end loop;
        return True;
   end areAllOtherGroupsEmpty;

   function isIdInList (This : in out GroupLayerManagerListener; id : Integer; excludeGroupList_Param : access BasicArrayList_Package.BasicArrayList'Class) return Boolean is
      excludeGroupList : constant BasicArrayList_Access := BasicArrayList_Access (excludeGroupList_Param);
      size : Integer;
      groupInterfaceArray : Group_Access_Array_Access;
      groupInterface : Group_Access;
      groupId : Integer;
      size2 : Integer;
      index2 : Integer;
      index : Integer;
   begin
        size := excludeGroupList.size;
        groupInterfaceArray := null;
        groupInterface := null;
        groupId := 0;
        for index in reverse 0 .. (size) - (1) loop
            groupInterfaceArray := Group_Access_Array_Access (excludeGroupList.objectArray (index));
            size2 := groupInterfaceArray'Length;
            for index2 in 0 .. (size2) - 1 loop
                groupInterface := groupInterfaceArray (index2);
                groupId := Integer (groupInterface.getGroupId);
                if (groupId) = (id) then
                    return True;
                end if;
            end loop;
        end loop;
        return False;
   end isIdInList;

   function areAllOtherGroupsLessThan (This : in out GroupLayerManagerListener; excludeGroupList_Param : access BasicArrayList_Package.BasicArrayList'Class; maxSize : Integer) return Boolean is
      excludeGroupList : constant BasicArrayList_Access := BasicArrayList_Access (excludeGroupList_Param);
      size : Integer;
      groupSize : Integer;
      index : Integer;
   begin
        size := This.list.size;
        for index in reverse 0 .. (size) - (1) loop
            if not (GroupLayerManagerListener'Class (This).isIdInList (index, excludeGroupList)) then
                groupSize := GroupLayerManagerListener'Class (This).getGroupSizeById (index);
                if (groupSize) >= (maxSize) then
                    return False;
                end if;
            end if;
        end loop;
        return True;
   end areAllOtherGroupsLessThan;

   procedure init (This : in out GroupLayerManagerListener; total : Integer) is
   begin
        while (This.list.size) <= ((total) + (1)) loop
            This.list.add (Java_Object_Access (BasicArrayListD_Package.Create));
        end loop;
   end init;

   procedure onEvent (This : in out GroupLayerManagerListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, GroupLayerManagerListener_Access'(This'Unchecked_Access));
   end onEvent;

   --  throws Exception
   procedure onCreateLayerManagerEvent (This : in out GroupLayerManagerListener; layerManagerEvent_Param : access LayerManagerEvent_Package.LayerManagerEvent'Class) is
      layerManagerEvent : constant LayerManagerEvent_Access := LayerManagerEvent_Access (layerManagerEvent_Param);
      layerInterface : AllBinaryLayer_Access;
      groupInterfaceArray : Group_Access_Array_Access;
      size : Integer;
      id : Integer;
      groupList : BasicArrayList_Access;
      index : Integer;
   begin
        layerInterface := layerManagerEvent.getLayerInterface;
        groupInterfaceArray := layerInterface.getGroupInterface;
        size := groupInterfaceArray'Length;
        id := 0;
        groupList := null;
        for index in 0 .. (size) - 1 loop
            id := Integer (groupInterfaceArray (index).getGroupId);
            groupList := BasicArrayList_Access (This.list.objectArray (id));
            if (groupList) = (null) then
                This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("id: ")).appendint (id).toString, GroupLayerManagerListener_Access'(This'Unchecked_Access), To_Unbounded_String ("onCreateLayerManagerEvent"));
            end if;
            if not (groupList.contains (Java_Object_Access (layerInterface))) then
                groupList.add (Java_Object_Access (layerInterface));
            else
                null;
            end if;
        end loop;
   end onCreateLayerManagerEvent;

   --  throws Exception
   procedure onDeleteLayerManagerEvent (This : in out GroupLayerManagerListener; layerManagerEvent_Param : access LayerManagerEvent_Package.LayerManagerEvent'Class) is
      layerManagerEvent : constant LayerManagerEvent_Access := LayerManagerEvent_Access (layerManagerEvent_Param);
      layerInterface : AllBinaryLayer_Access;
      groupInterfaceArray : Group_Access_Array_Access;
      size : Integer;
      id : Integer;
      groupList : BasicArrayList_Access;
      index : Integer;
   begin
        layerInterface := layerManagerEvent.getLayerInterface;
        groupInterfaceArray := layerInterface.getGroupInterface;
        size := groupInterfaceArray'Length;
        id := 0;
        groupList := null;
        for index in 0 .. (size) - 1 loop
            id := Integer (groupInterfaceArray (index).getGroupId);
            groupList := BasicArrayList_Access (This.list.objectArray (id));
            groupList.remove (Java_Object_Access (layerInterface));
        end loop;
   end onDeleteLayerManagerEvent;

   procedure log (This : in out GroupLayerManagerListener) is
      stringBuffer : StringMaker_Access;
      GROUP : Unbounded_String;
      SPACE : Unbounded_String;
      TOTAL_LABEL : Unbounded_String;
      size : Integer;
      groupList : BasicArrayList_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        GROUP := To_Unbounded_String ("Group: ");
        SPACE := CommonSeps_Package.getInstance.SPACE;
        TOTAL_LABEL := CommonLabels_Package.getInstance.TOTAL_LABEL;
        size := This.list.size;
        for index in reverse 0 .. (size) - (1) loop
            groupList := BasicArrayList_Access (This.list.objectArray (index));
            stringBuffer.append (GROUP);
            stringBuffer.appendint (index);
            stringBuffer.append (SPACE);
            stringBuffer.append (TOTAL_LABEL);
            stringBuffer.appendint (groupList.size);
            stringBuffer.append (SPACE);
        end loop;
        This.logUtil.putF (stringBuffer.toString, GroupLayerManagerListener_Access'(This'Unchecked_Access), To_Unbounded_String ("log"));
   end log;

   procedure getGroupSizeFromInterface (This : in out GroupLayerManagerListener; groupInterfaceCompositeInterface_Param : access GroupInterfaceCompositeInterface_Package.GroupInterfaceCompositeInterface'Class) is
      Java_Result : constant Integer := GroupLayerManagerListener'Class (This).getGroupSizeFromInterface (groupInterfaceCompositeInterface_Param => groupInterfaceCompositeInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGroupSizeFromInterface;

   procedure getGroupSize (This : in out GroupLayerManagerListener; groupInterface_Param : access Group_Package.Group'Class) is
      Java_Result : constant Integer := GroupLayerManagerListener'Class (This).getGroupSize (groupInterface_Param => groupInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGroupSize;

   procedure getList (This : in out GroupLayerManagerListener; groupInterface_Param : access Group_Package.Group'Class) is
      Java_Result : constant BasicArrayList_Access := GroupLayerManagerListener'Class (This).getList (groupInterface_Param => groupInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getList;

   procedure getListById (This : in out GroupLayerManagerListener; groupId : Integer) is
      Java_Result : constant BasicArrayList_Access := GroupLayerManagerListener'Class (This).getListById (groupId => groupId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getListById;

   procedure getGroupSizeById (This : in out GroupLayerManagerListener; groupId : Integer) is
      Java_Result : constant Integer := GroupLayerManagerListener'Class (This).getGroupSizeById (groupId => groupId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGroupSizeById;

   procedure areAllOtherGroupsEmpty (This : in out GroupLayerManagerListener; groupInterface_Param : access Group_Package.Group'Class) is
      Java_Result : constant Boolean := GroupLayerManagerListener'Class (This).areAllOtherGroupsEmpty (groupInterface_Param => groupInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end areAllOtherGroupsEmpty;

   procedure isIdInList (This : in out GroupLayerManagerListener; id : Integer; excludeGroupList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Boolean := GroupLayerManagerListener'Class (This).isIdInList (id => id, excludeGroupList_Param => excludeGroupList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isIdInList;

   procedure areAllOtherGroupsLessThan (This : in out GroupLayerManagerListener; excludeGroupList_Param : access BasicArrayList_Package.BasicArrayList'Class; maxSize : Integer) is
      Java_Result : constant Boolean := GroupLayerManagerListener'Class (This).areAllOtherGroupsLessThan (excludeGroupList_Param => excludeGroupList_Param, maxSize => maxSize);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end areAllOtherGroupsLessThan;

begin
   null;
   SINGLETON := GroupLayerManagerListener_Package.Create;

end org.allbinary.game.layer.identification.GroupLayerManagerListener_Package;


