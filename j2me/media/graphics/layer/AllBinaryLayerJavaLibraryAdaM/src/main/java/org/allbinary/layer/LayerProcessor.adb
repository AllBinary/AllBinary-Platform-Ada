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


   procedure Initialize (This : in out LayerProcessor'Class; layerManager_Param : access LayerManager'Class) is
      layerManager : LayerManager_Access := LayerManager_Access (layerManager_Param);
   begin
      Initialize_Fields (This);
        This.layerManager := layerManager;
   end Initialize;

   function Create (layerManager_Param : access LayerManager'Class) return LayerProcessor_Access is
      This : constant LayerProcessor_Access := new LayerProcessor;
   begin
      LayerProcessor_Package.Initialize (This.all, layerManager_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processAt (This : in out LayerProcessor; allBinaryLayerManager_Param : access AllBinaryLayerManager'Class; layerInterface_Param : access AllBinaryLayer'Class; index : Integer) is
      allBinaryLayerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      layerInterface : AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end processAt;

   --  throws Exception
   function isProcessorLayer (This : in out LayerProcessor; layerInterface_Param : access AllBinaryLayer'Class) return Boolean is
      layerInterface : AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end isProcessorLayer;

   function getLayerManager (This : in out LayerProcessor) return LayerManager_Access is
   begin
        return This.layerManager;
   end getLayerManager;

   --  throws Exception
   procedure process (This : in out LayerProcessor; allBinaryLayerManager_Param : access AllBinaryLayerManager'Class) is
      allBinaryLayerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
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

   procedure isProcessorLayer (This : in out LayerProcessor; layerInterface_Param : access AllBinaryLayer'Class) is
      Java_Result : constant Boolean := LayerProcessor'Class (This).isProcessorLayer (layerInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isProcessorLayer;

end org.allbinary.layer.LayerProcessor_Package;


