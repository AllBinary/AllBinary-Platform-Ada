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


with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with org.allbinary.layer.event.LayerManagerEvent_Package; use org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.LayerInterface_Package;
with org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package;
with org.allbinary.layer.NamedInterface_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.layer.event.LayerManagerEventListener_Package is

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
   procedure Initialize_Fields (This : in out LayerManagerEventListener'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LayerManagerEventListener'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LayerManagerEventListener_Access is
      This : constant LayerManagerEventListener_Access := new LayerManagerEventListener;
   begin
      LayerManagerEventListener_Package.Initialize (This.all);
      return This;
   end Create;


   procedure onEvent (This : in out LayerManagerEventListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        null;
   end onEvent;

   --  throws Exception
   procedure onCreateLayerManagerEvent (This : in out LayerManagerEventListener; layerManagerEvent_Param : access LayerManagerEvent_Package.LayerManagerEvent'Class) is
      layerManagerEvent : constant LayerManagerEvent_Access := LayerManagerEvent_Access (layerManagerEvent_Param);
   begin
        null;
   end onCreateLayerManagerEvent;

   --  throws Exception
   procedure onDeleteLayerManagerEvent (This : in out LayerManagerEventListener; layerManagerEvent_Param : access LayerManagerEvent_Package.LayerManagerEvent'Class) is
      layerManagerEvent : constant LayerManagerEvent_Access := LayerManagerEvent_Access (layerManagerEvent_Param);
   begin
        null;
   end onDeleteLayerManagerEvent;

end org.allbinary.layer.event.LayerManagerEventListener_Package;


