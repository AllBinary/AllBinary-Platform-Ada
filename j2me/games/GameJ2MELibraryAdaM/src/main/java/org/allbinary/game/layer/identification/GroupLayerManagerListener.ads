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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package; use org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package; use org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEventHandler_Package; use org.allbinary.layer.event.LayerManagerEventHandler_Package;
with org.allbinary.layer.event.LayerManagerEventListener_Package; use org.allbinary.layer.event.LayerManagerEventListener_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.game.layer.identification.GroupLayerManagerListener_Package is

   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package GroupInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package LayerManagerEvent_Package renames Standard.org.allbinary.layer.event.LayerManagerEvent_Package;
   package LayerManagerEventHandler_Package renames Standard.org.allbinary.layer.event.LayerManagerEventHandler_Package;
   package LayerManagerEventListener_Package renames Standard.org.allbinary.layer.event.LayerManagerEventListener_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type GroupLayerManagerListener is tagged;
   type GroupLayerManagerListener_Access is access all GroupLayerManagerListener'Class;
   type GroupLayerManagerListener_Access_Array is array (Natural range <>) of GroupLayerManagerListener_Access;
   type GroupLayerManagerListener_Access_Array_Access is access all GroupLayerManagerListener_Access_Array;

   type GroupLayerManagerListener is new LayerManagerEventListener with record
      logUtil : LogUtil_Access;
      list : BasicArrayList_Access;
   end record;
   SINGLETON : GroupLayerManagerListener_Access;

   procedure Initialize (This : in out GroupLayerManagerListener'Class);
   function Create return GroupLayerManagerListener_Access;
   function getInstance return GroupLayerManagerListener_Access;
   procedure clear (This : in out GroupLayerManagerListener);
   function getGroupSizeFromInterface (This : in out GroupLayerManagerListener; groupInterfaceCompositeInterface : GroupInterfaceCompositeInterface_Access) return Integer;
   procedure getGroupSizeFromInterface (This : in out GroupLayerManagerListener; groupInterfaceCompositeInterface : GroupInterfaceCompositeInterface_Access);
   function getGroupSize (This : in out GroupLayerManagerListener; groupInterface : Group_Access) return Integer;
   procedure getGroupSize (This : in out GroupLayerManagerListener; groupInterface : Group_Access);
   function getList (This : in out GroupLayerManagerListener; groupInterface : Group_Access) return BasicArrayList_Access;
   procedure getList (This : in out GroupLayerManagerListener; groupInterface : Group_Access);
   function getListById (This : in out GroupLayerManagerListener; groupId : Integer) return BasicArrayList_Access;
   procedure getListById (This : in out GroupLayerManagerListener; groupId : Integer);
   function getGroupSizeById (This : in out GroupLayerManagerListener; groupId : Integer) return Integer;
   procedure getGroupSizeById (This : in out GroupLayerManagerListener; groupId : Integer);
   function areAllOtherGroupsEmpty (This : in out GroupLayerManagerListener; groupInterface : Group_Access) return Boolean;
   procedure areAllOtherGroupsEmpty (This : in out GroupLayerManagerListener; groupInterface : Group_Access);
   function isIdInList (This : in out GroupLayerManagerListener; id : Integer; excludeGroupList : BasicArrayList_Access) return Boolean;
   procedure isIdInList (This : in out GroupLayerManagerListener; id : Integer; excludeGroupList : BasicArrayList_Access);
   function areAllOtherGroupsLessThan (This : in out GroupLayerManagerListener; excludeGroupList : BasicArrayList_Access; maxSize : Integer) return Boolean;
   procedure areAllOtherGroupsLessThan (This : in out GroupLayerManagerListener; excludeGroupList : BasicArrayList_Access; maxSize : Integer);
   procedure init (This : in out GroupLayerManagerListener; total : Integer);
   procedure onEvent (This : in out GroupLayerManagerListener; eventObject : AllBinaryEventObject_Access);
   procedure onCreateLayerManagerEvent (This : in out GroupLayerManagerListener; layerManagerEvent : LayerManagerEvent_Access);
   procedure onDeleteLayerManagerEvent (This : in out GroupLayerManagerListener; layerManagerEvent : LayerManagerEvent_Access);
   procedure log (This : in out GroupLayerManagerListener);

end org.allbinary.game.layer.identification.GroupLayerManagerListener_Package;


