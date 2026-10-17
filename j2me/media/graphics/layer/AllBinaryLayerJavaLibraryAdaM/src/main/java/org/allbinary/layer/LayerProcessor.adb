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


package body org.allbinary.layer.LayerProcessor_Package is

   procedure Initialize_Fields (This : in out LayerProcessor'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out LayerProcessor'Class; layerManager : LayerManager_Access) is
   begin
      Initialize_Fields (This);
        This.layerManager := layerManager;
   end Initialize;

   function Create (layerManager : LayerManager_Access) return LayerProcessor_Access is
      This : constant LayerProcessor_Access := new LayerProcessor;
   begin
      Initialize (This.all, layerManager);
      return This;
   end Create;

   --  throws Exception
   procedure processAt (This : in out LayerProcessor; allBinaryLayerManager : AllBinaryLayerManager_Access; layerInterface : AllBinaryLayer_Access; index : Integer) is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end processAt;

   --  throws Exception
   function isProcessorLayer (This : in out LayerProcessor; layerInterface : AllBinaryLayer_Access) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end isProcessorLayer;

   function getLayerManager (This : in out LayerProcessor) return LayerManager_Access is
   begin
        return This.layerManager;
   end getLayerManager;

   --  throws Exception
   procedure process (This : in out LayerProcessor; allBinaryLayerManager : AllBinaryLayerManager_Access) is
      layerManager : LayerManager_Access;
      size : Integer;
      index : Integer;
   begin
        layerManager := This.getLayerManager;
        size := layerManager.getSize;
        for index in 0 .. (size) - 1 loop
            This.processAt (allBinaryLayerManager, AllBinaryLayer_Access (layerManager.getLayerAt (index)), index);
        end loop;
   end process;

   procedure isProcessorLayer (This : in out LayerProcessor; layerInterface : AllBinaryLayer_Access) is
      Java_Result : constant Boolean := LayerProcessor'Class (This).isProcessorLayer (layerInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isProcessorLayer;

   procedure getLayerManager (This : in out LayerProcessor) is
      Java_Result : constant LayerManager_Access := LayerProcessor'Class (This).getLayerManager;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLayerManager;

end org.allbinary.layer.LayerProcessor_Package;


