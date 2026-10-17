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


package body org.allbinary.ai.ArtificialIntelligenceLayerManager_Package is

   procedure Initialize_Fields (This : in out ArtificialIntelligenceLayerManager'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ArtificialIntelligenceLayerManager'Class) is
   begin
        LayerManager_Package.Initialize (This, LayerManagerNoDebug_Package.getInstance);
   end Initialize;

   function Create return ArtificialIntelligenceLayerManager_Access is
      This : constant ArtificialIntelligenceLayerManager_Access := new ArtificialIntelligenceLayerManager;
   begin
      Initialize (This.all);
      return This;
   end Create;

end org.allbinary.ai.ArtificialIntelligenceLayerManager_Package;


