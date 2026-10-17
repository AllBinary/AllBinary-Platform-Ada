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


package body org.allbinary.game.layer.identification.GroupLayerManagerListener_Package is

   procedure Initialize_Fields (This : in out GroupLayerManagerListener'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.list := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   function getInstance return GroupLayerManagerListener_Access is
   begin
        return GroupLayerManagerListener_Package.SINGLETON;
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

   function getGroupSizeFromInterface (This : in out GroupLayerManagerListener; groupInterfaceCompositeInterface_Param : access GroupInterfaceCompositeInterface'Class) return Integer is
      groupInterfaceCompositeInterface : GroupInterfaceCompositeInterface_Access := GroupInterfaceCompositeInterface_Access (groupInterfaceCompositeInterface_Param);
      groupInterfaceArray : Group_Access_Array_Access;
   begin
        groupInterfaceArray := groupInterfaceCompositeInterface.getGroupInterface;
        return This.getGroupSize (groupInterfaceArray (0));
   end getGroupSizeFromInterface;

   function getGroupSize (This : in out GroupLayerManagerListener; groupInterface_Param : access Group'Class) return Integer is
      groupInterface : Group_Access := Group_Access (groupInterface_Param);
      id : Integer;
   begin
        id := Integer (groupInterface.getGroupId);
        return This.getGroupSizeById (id);
   end getGroupSize;

   function getList (This : in out GroupLayerManagerListener; groupInterface_Param : access Group'Class) return BasicArrayList_Access is
      groupInterface : Group_Access := Group_Access (groupInterface_Param);
      id : Integer;
   begin
        id := Integer (groupInterface.getGroupId);
        return This.getListById (id);
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

   function areAllOtherGroupsEmpty (This : in out GroupLayerManagerListener; groupInterface_Param : access Group'Class) return Boolean is
      groupInterface : Group_Access := Group_Access (groupInterface_Param);
      id : Integer;
      size : Integer;
      groupSize : Integer;
      index : Integer;
   begin
        id := Integer (groupInterface.getGroupId);
        size := This.list.size;
        for index in reverse 0 .. (size) - (1) loop
            if (id) /= (index) then
                groupSize := This.getGroupSizeById (index);
                if (groupSize) /= (0) then
                    This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Group Size: ")).appendint (groupSize).toString, GroupLayerManagerListener_Access'(This'Unchecked_Access), To_Unbounded_String ("areAllOtherGroupsEmpty"));
                    return False;
                end if;
            end if;
        end loop;
        return True;
   end areAllOtherGroupsEmpty;

   function isIdInList (This : in out GroupLayerManagerListener; id : Integer; excludeGroupList_Param : access BasicArrayList'Class) return Boolean is
      excludeGroupList : BasicArrayList_Access := BasicArrayList_Access (excludeGroupList_Param);
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

   function areAllOtherGroupsLessThan (This : in out GroupLayerManagerListener; excludeGroupList_Param : access BasicArrayList'Class; maxSize : Integer) return Boolean is
      excludeGroupList : BasicArrayList_Access := BasicArrayList_Access (excludeGroupList_Param);
      size : Integer;
      groupSize : Integer;
      index : Integer;
   begin
        size := This.list.size;
        for index in reverse 0 .. (size) - (1) loop
            if not (This.isIdInList (index, excludeGroupList)) then
                groupSize := This.getGroupSizeById (index);
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
            This.list.add (BasicArrayListD_Package.Create);
        end loop;
   end init;

   procedure onEvent (This : in out GroupLayerManagerListener; eventObject_Param : access AllBinaryEventObject'Class) is
      eventObject : AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, GroupLayerManagerListener_Access'(This'Unchecked_Access));
   end onEvent;

   --  throws Exception
   procedure onCreateLayerManagerEvent (This : in out GroupLayerManagerListener; layerManagerEvent_Param : access LayerManagerEvent'Class) is
      layerManagerEvent : LayerManagerEvent_Access := LayerManagerEvent_Access (layerManagerEvent_Param);
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
            if not (groupList.contains (layerInterface)) then
                groupList.add (layerInterface);
            else
                null;
            end if;
        end loop;
   end onCreateLayerManagerEvent;

   --  throws Exception
   procedure onDeleteLayerManagerEvent (This : in out GroupLayerManagerListener; layerManagerEvent_Param : access LayerManagerEvent'Class) is
      layerManagerEvent : LayerManagerEvent_Access := LayerManagerEvent_Access (layerManagerEvent_Param);
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
            groupList.remove (layerInterface);
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

   procedure getGroupSizeFromInterface (This : in out GroupLayerManagerListener; groupInterfaceCompositeInterface_Param : access GroupInterfaceCompositeInterface'Class) is
      Java_Result : constant Integer := GroupLayerManagerListener'Class (This).getGroupSizeFromInterface (groupInterfaceCompositeInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGroupSizeFromInterface;

   procedure getGroupSize (This : in out GroupLayerManagerListener; groupInterface_Param : access Group'Class) is
      Java_Result : constant Integer := GroupLayerManagerListener'Class (This).getGroupSize (groupInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGroupSize;

   procedure getList (This : in out GroupLayerManagerListener; groupInterface_Param : access Group'Class) is
      Java_Result : constant BasicArrayList_Access := GroupLayerManagerListener'Class (This).getList (groupInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getList;

   procedure getListById (This : in out GroupLayerManagerListener; groupId : Integer) is
      Java_Result : constant BasicArrayList_Access := GroupLayerManagerListener'Class (This).getListById (groupId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getListById;

   procedure getGroupSizeById (This : in out GroupLayerManagerListener; groupId : Integer) is
      Java_Result : constant Integer := GroupLayerManagerListener'Class (This).getGroupSizeById (groupId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGroupSizeById;

   procedure areAllOtherGroupsEmpty (This : in out GroupLayerManagerListener; groupInterface_Param : access Group'Class) is
      Java_Result : constant Boolean := GroupLayerManagerListener'Class (This).areAllOtherGroupsEmpty (groupInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end areAllOtherGroupsEmpty;

   procedure isIdInList (This : in out GroupLayerManagerListener; id : Integer; excludeGroupList_Param : access BasicArrayList'Class) is
      Java_Result : constant Boolean := GroupLayerManagerListener'Class (This).isIdInList (id, excludeGroupList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isIdInList;

   procedure areAllOtherGroupsLessThan (This : in out GroupLayerManagerListener; excludeGroupList_Param : access BasicArrayList'Class; maxSize : Integer) is
      Java_Result : constant Boolean := GroupLayerManagerListener'Class (This).areAllOtherGroupsLessThan (excludeGroupList_Param, maxSize);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end areAllOtherGroupsLessThan;

begin
   null;
   SINGLETON := GroupLayerManagerListener_Package.Create;

end org.allbinary.game.layer.identification.GroupLayerManagerListener_Package;


