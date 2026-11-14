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

with AllBinary_Java;
limited with org.allbinary.game.layer.identification.GroupLayerManagerListener_Package;
package org.allbinary.game.layer.identification.GroupLayerManagerListener_Package_References is
   type GroupLayerManagerListener_Access is access all org.allbinary.game.layer.identification.GroupLayerManagerListener_Package.GroupLayerManagerListener'Class;
   type GroupLayerManagerListener_Access_Array is array (Natural range <>) of GroupLayerManagerListener_Access;
   type GroupLayerManagerListener_Access_Array_Access is access all GroupLayerManagerListener_Access_Array;
   type GroupLayerManagerListener_Access_Array_Access_Array is array (Natural range <>) of GroupLayerManagerListener_Access_Array_Access;
   type GroupLayerManagerListener_Access_Array_Access_Array_Access is access all GroupLayerManagerListener_Access_Array_Access_Array;
   type GroupLayerManagerListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GroupLayerManagerListener_Access_Array_Access;
   end record;
   function Java_Box (Value : GroupLayerManagerListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GroupLayerManagerListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GroupLayerManagerListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GroupLayerManagerListener_Access_Array_Access is (if Value /= null and then Value.all in GroupLayerManagerListener_Access_Array_Object'Class then GroupLayerManagerListener_Access_Array_Object'Class (Value.all).Value else null);
   type GroupLayerManagerListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GroupLayerManagerListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GroupLayerManagerListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GroupLayerManagerListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GroupLayerManagerListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GroupLayerManagerListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GroupLayerManagerListener_Access_Array_Access_Array_Object'Class then GroupLayerManagerListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.identification.GroupLayerManagerListener_Package_References;

with org.allbinary.game.layer.identification.GroupLayerManagerListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;
limited with org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package;
with org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References;
limited with org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package_References;
with org.allbinary.layer.event.LayerManagerEventListener_Package; use org.allbinary.layer.event.LayerManagerEventListener_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.game.layer.identification.GroupLayerManagerListener_Package is

   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package GroupInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package;
   package LayerManagerEvent_Package renames Standard.org.allbinary.layer.event.LayerManagerEvent_Package;
   package LayerManagerEventListener_Package renames Standard.org.allbinary.layer.event.LayerManagerEventListener_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype Group_Access is org.allbinary.game.identification.Group_Package_References.Group_Access;
   use type Group_Access;
   subtype Group_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array;
   use type Group_Access_Array;
   subtype Group_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access;
   use type Group_Access_Array_Access;
   subtype Group_Access_Array_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array;
   use type Group_Access_Array_Access_Array;
   subtype Group_Access_Array_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array_Access;
   use type Group_Access_Array_Access_Array_Access;
   subtype GroupInterfaceCompositeInterface_Access is org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References.GroupInterfaceCompositeInterface_Access;
   use type GroupInterfaceCompositeInterface_Access;
   subtype GroupInterfaceCompositeInterface_Access_Array is org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References.GroupInterfaceCompositeInterface_Access_Array;
   use type GroupInterfaceCompositeInterface_Access_Array;
   subtype GroupInterfaceCompositeInterface_Access_Array_Access is org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References.GroupInterfaceCompositeInterface_Access_Array_Access;
   use type GroupInterfaceCompositeInterface_Access_Array_Access;
   subtype GroupInterfaceCompositeInterface_Access_Array_Access_Array is org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References.GroupInterfaceCompositeInterface_Access_Array_Access_Array;
   use type GroupInterfaceCompositeInterface_Access_Array_Access_Array;
   subtype GroupInterfaceCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package_References.GroupInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   use type GroupInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   subtype LayerManagerEvent_Access is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access;
   use type LayerManagerEvent_Access;
   subtype LayerManagerEvent_Access_Array is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array;
   use type LayerManagerEvent_Access_Array;
   subtype LayerManagerEvent_Access_Array_Access is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array_Access;
   use type LayerManagerEvent_Access_Array_Access;
   subtype LayerManagerEvent_Access_Array_Access_Array is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array_Access_Array;
   use type LayerManagerEvent_Access_Array_Access_Array;
   subtype LayerManagerEvent_Access_Array_Access_Array_Access is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array_Access_Array_Access;
   use type LayerManagerEvent_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GroupLayerManagerListener_Access is org.allbinary.game.layer.identification.GroupLayerManagerListener_Package_References.GroupLayerManagerListener_Access;
   function "=" (Left, Right : GroupLayerManagerListener_Access) return Boolean renames org.allbinary.game.layer.identification.GroupLayerManagerListener_Package_References."=";
   subtype GroupLayerManagerListener_Access_Array is org.allbinary.game.layer.identification.GroupLayerManagerListener_Package_References.GroupLayerManagerListener_Access_Array;
   function "=" (Left, Right : GroupLayerManagerListener_Access_Array) return Boolean renames org.allbinary.game.layer.identification.GroupLayerManagerListener_Package_References."=";
   subtype GroupLayerManagerListener_Access_Array_Access is org.allbinary.game.layer.identification.GroupLayerManagerListener_Package_References.GroupLayerManagerListener_Access_Array_Access;
   function "=" (Left, Right : GroupLayerManagerListener_Access_Array_Access) return Boolean renames org.allbinary.game.layer.identification.GroupLayerManagerListener_Package_References."=";
   function Java_Box (Value : GroupLayerManagerListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.identification.GroupLayerManagerListener_Package_References.Java_Box;
   function Java_Unbox_GroupLayerManagerListener_Access_Array (Value : access Java_Object'Class) return GroupLayerManagerListener_Access_Array_Access renames org.allbinary.game.layer.identification.GroupLayerManagerListener_Package_References.Java_Unbox_GroupLayerManagerListener_Access_Array;
   subtype GroupLayerManagerListener_Access_Array_Access_Array is org.allbinary.game.layer.identification.GroupLayerManagerListener_Package_References.GroupLayerManagerListener_Access_Array_Access_Array;
   function "=" (Left, Right : GroupLayerManagerListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.identification.GroupLayerManagerListener_Package_References."=";
   subtype GroupLayerManagerListener_Access_Array_Access_Array_Access is org.allbinary.game.layer.identification.GroupLayerManagerListener_Package_References.GroupLayerManagerListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GroupLayerManagerListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.identification.GroupLayerManagerListener_Package_References."=";
   function Java_Box (Value : GroupLayerManagerListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.identification.GroupLayerManagerListener_Package_References.Java_Box;
   function Java_Unbox_GroupLayerManagerListener_Access_Array_Access_Array (Value : access Java_Object'Class) return GroupLayerManagerListener_Access_Array_Access_Array_Access renames org.allbinary.game.layer.identification.GroupLayerManagerListener_Package_References.Java_Unbox_GroupLayerManagerListener_Access_Array_Access_Array;

   type GroupLayerManagerListener is new LayerManagerEventListener with record
      logUtil : LogUtil_Access;
      list : BasicArrayList_Access;
   end record;
   SINGLETON : GroupLayerManagerListener_Access;

   procedure Initialize (This : in out GroupLayerManagerListener'Class);
   function Create return GroupLayerManagerListener_Access;
   function getInstance return GroupLayerManagerListener_Access;
   procedure clear (This : in out GroupLayerManagerListener);
   function getGroupSizeFromInterface (This : in out GroupLayerManagerListener; groupInterfaceCompositeInterface_Param : access GroupInterfaceCompositeInterface_Package.GroupInterfaceCompositeInterface'Class) return Integer;
   procedure getGroupSizeFromInterface (This : in out GroupLayerManagerListener; groupInterfaceCompositeInterface_Param : access GroupInterfaceCompositeInterface_Package.GroupInterfaceCompositeInterface'Class);
   function getGroupSize (This : in out GroupLayerManagerListener; groupInterface_Param : access Group_Package.Group'Class) return Integer;
   procedure getGroupSize (This : in out GroupLayerManagerListener; groupInterface_Param : access Group_Package.Group'Class);
   function getList (This : in out GroupLayerManagerListener; groupInterface_Param : access Group_Package.Group'Class) return BasicArrayList_Access;
   procedure getList (This : in out GroupLayerManagerListener; groupInterface_Param : access Group_Package.Group'Class);
   function getListById (This : in out GroupLayerManagerListener; groupId : Integer) return BasicArrayList_Access;
   procedure getListById (This : in out GroupLayerManagerListener; groupId : Integer);
   function getGroupSizeById (This : in out GroupLayerManagerListener; groupId : Integer) return Integer;
   procedure getGroupSizeById (This : in out GroupLayerManagerListener; groupId : Integer);
   function areAllOtherGroupsEmpty (This : in out GroupLayerManagerListener; groupInterface_Param : access Group_Package.Group'Class) return Boolean;
   procedure areAllOtherGroupsEmpty (This : in out GroupLayerManagerListener; groupInterface_Param : access Group_Package.Group'Class);
   function isIdInList (This : in out GroupLayerManagerListener; id : Integer; excludeGroupList_Param : access BasicArrayList_Package.BasicArrayList'Class) return Boolean;
   procedure isIdInList (This : in out GroupLayerManagerListener; id : Integer; excludeGroupList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function areAllOtherGroupsLessThan (This : in out GroupLayerManagerListener; excludeGroupList_Param : access BasicArrayList_Package.BasicArrayList'Class; maxSize : Integer) return Boolean;
   procedure areAllOtherGroupsLessThan (This : in out GroupLayerManagerListener; excludeGroupList_Param : access BasicArrayList_Package.BasicArrayList'Class; maxSize : Integer);
   procedure init (This : in out GroupLayerManagerListener; total : Integer);
   procedure onEvent (This : in out GroupLayerManagerListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onCreateLayerManagerEvent (This : in out GroupLayerManagerListener; layerManagerEvent_Param : access LayerManagerEvent_Package.LayerManagerEvent'Class);
   procedure onDeleteLayerManagerEvent (This : in out GroupLayerManagerListener; layerManagerEvent_Param : access LayerManagerEvent_Package.LayerManagerEvent'Class);
   procedure log (This : in out GroupLayerManagerListener);

end org.allbinary.game.layer.identification.GroupLayerManagerListener_Package;


