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


with org.allbinary.layer.SingleLayerLayerManager_Package; use org.allbinary.layer.SingleLayerLayerManager_Package;
with org.allbinary.layer.LayerManager_Package; use org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.BasicLayerProcessorInterface_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.LayerInterface_Package;
with org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEventHandler_Package;
with org.allbinary.layer.event.LayerManagerEventListener_Package;
with org.allbinary.layer.event.LayerManagerEventListenerInterface_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package;
with org.allbinary.layer.LayerProcessor_Package;
with org.allbinary.layer.LayerProcessorInterface_Package;
with org.allbinary.layer.NamedInterface_Package;
with org.allbinary.layer.SingleLayerLayerManager_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.layer.SingleLayerLayerProcessor_Package is

   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   procedure Initialize_Fields (This : in out SingleLayerLayerProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SingleLayerLayerProcessor'Class) is
   begin
        LayerProcessor_Package.Initialize (This, SingleLayerLayerManager_Package.Create);
   end Initialize;

   function Create return SingleLayerLayerProcessor_Access is
      This : constant SingleLayerLayerProcessor_Access := new SingleLayerLayerProcessor;
   begin
      SingleLayerLayerProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out SingleLayerLayerProcessor; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      layerManager : LayerManager_Access;
   begin
        layerManager := SingleLayerLayerProcessor'Class (This).getLayerManager;
        SingleLayerLayerProcessor'Class (This).processAt (allBinaryLayerManager, AllBinaryLayer_Access (layerManager.getLayerAt (0)), 0);
   end process;

end org.allbinary.layer.SingleLayerLayerProcessor_Package;


