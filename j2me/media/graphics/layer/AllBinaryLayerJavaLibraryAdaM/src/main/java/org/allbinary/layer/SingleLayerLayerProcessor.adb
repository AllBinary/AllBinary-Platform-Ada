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


package body org.allbinary.layer.SingleLayerLayerProcessor_Package is

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
   procedure process (This : in out SingleLayerLayerProcessor; allBinaryLayerManager_Param : access AllBinaryLayerManager'Class) is
      allBinaryLayerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      layerManager : LayerManager_Access;
   begin
        layerManager := This.getLayerManager;
        This.processAt (allBinaryLayerManager, AllBinaryLayer_Access (layerManager.getLayerAt (0)), 0);
   end process;

end org.allbinary.layer.SingleLayerLayerProcessor_Package;


