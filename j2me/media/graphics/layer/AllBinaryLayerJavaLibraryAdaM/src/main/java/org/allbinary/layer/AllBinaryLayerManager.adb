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


package body org.allbinary.layer.AllBinaryLayerManager_Package is

   procedure Initialize_Fields (This : in out AllBinaryLayerManager'Class) is
   begin
      null;
      This.layerManagerEventHandler := LayerManagerEventHandler_Package.getInstance;
      This.createLayerManagerEvent := LayerManagerEvent_Package.Create (AllBinaryLayerManager_Access'(This'Unchecked_Access), This.layerManagerEventHandler.CREATE);
      This.deleteLayerManagerEvent := LayerManagerEvent_Package.Create (AllBinaryLayerManager_Access'(This'Unchecked_Access), This.layerManagerEventHandler.DELETE);
      This.basicLayerProcessorArray := new LayerProcessor_Access_Array'(0 .. (0) - 1 => null);
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryLayerManager'Class) is
   begin
        LayerManager_Package.Initialize (This, LayerManagerNoDebug_Package.getInstance);
        Initialize_Fields (This);
   end Initialize;

   function Create return AllBinaryLayerManager_Access is
      This : constant AllBinaryLayerManager_Access := new AllBinaryLayerManager;
   begin
      AllBinaryLayerManager_Package.Initialize (This.all);
      return This;
   end Create;

   function getLayerProcessorArray (This : in out AllBinaryLayerManager) return LayerProcessor_Access_Array_Access is
   begin
        return This.basicLayerProcessorArray;
   end getLayerProcessorArray;

   procedure setLayerProcessorArray (This : in out AllBinaryLayerManager; layerProcessorArray : LayerProcessor_Access_Array_Access) is
   begin
        This.basicLayerProcessorArray := layerProcessorArray;
   end setLayerProcessorArray;

   procedure log (This : in out AllBinaryLayerManager) is
      size : Integer;
      layerProcessorInterface : LayerProcessor_Access;
      index : Integer;
   begin
        size := This.basicLayerProcessorArray'Length;
        for index in 0 .. (size) - 1 loop
            layerProcessorInterface := This.basicLayerProcessorArray (index);
        end loop;
   end log;

   --  throws Exception
   procedure append (This : in out AllBinaryLayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        if not (This.contains (layerInterface)) then
            This.appendProcessors (layerInterface);
            LayerManager (This).append (layerInterface);
        end if;
   end append;

   --  throws Exception
   procedure appendAt (This : in out AllBinaryLayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; index : Integer) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        if not (This.contains (layerInterface)) then
            This.appendProcessors (layerInterface);
            LayerManager (This).appendAt (layerInterface, index);
        end if;
   end appendAt;

   --  throws Exception
   procedure appendProcessors (This : in out AllBinaryLayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      layerProcessorInterface : LayerProcessor_Access;
      index : Integer;
   begin
        This.createLayerManagerEvent.setLayerInterface (layerInterface);
        This.layerManagerEventHandler.fireEvent (This.createLayerManagerEvent);
        layerProcessorInterface := null;
        index := This.basicLayerProcessorArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            layerProcessorInterface := This.basicLayerProcessorArray (index);
            if layerProcessorInterface.isProcessorLayer (layerInterface) then
                layerProcessorInterface.getLayerManager.append (layerInterface);
            end if;
        end loop;
   end appendProcessors;

   --  throws Exception
   procedure remove (This : in out AllBinaryLayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      layerProcessorInterface : LayerProcessor_Access;
      index : Integer;
   begin
        This.deleteLayerManagerEvent.setLayerInterface (layerInterface);
        This.layerManagerEventHandler.fireDeleteEvent (This.deleteLayerManagerEvent);
        layerProcessorInterface := null;
        index := This.basicLayerProcessorArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            layerProcessorInterface := This.basicLayerProcessorArray (index);
            layerProcessorInterface.getLayerManager.remove (layerInterface);
        end loop;
        LayerManager (This).remove (layerInterface);
   end remove;

   --  throws Exception
   procedure process (This : in out AllBinaryLayerManager) is
      layerProcessorInterface : LayerProcessor_Access;
      size : Integer;
      index : Integer;
   begin
        layerProcessorInterface := null;
        size := This.basicLayerProcessorArray'Length;
        for index in 0 .. (size) - 1 loop
            layerProcessorInterface := This.basicLayerProcessorArray (index);
            layerProcessorInterface.process (AllBinaryLayerManager_Access'(This'Unchecked_Access));
        end loop;
   end process;

   --  throws Exception
   procedure cleanup (This : in out AllBinaryLayerManager) is
      layerProcessorInterface : LayerProcessor_Access;
      size : Integer;
      index : Integer;
   begin
        layerProcessorInterface := null;
        size := This.basicLayerProcessorArray'Length;
        for index in 0 .. (size) - 1 loop
            layerProcessorInterface := This.basicLayerProcessorArray (index);
            layerProcessorInterface.getLayerManager.cleanup;
        end loop;
        LayerManager (This).cleanup;
   end cleanup;

end org.allbinary.layer.AllBinaryLayerManager_Package;


