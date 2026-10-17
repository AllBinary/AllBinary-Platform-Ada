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


package body org.allbinary.game.ag.ai.NullAI_Package is

   procedure Initialize_Fields (This : in out NullAI'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NullAI'Class) is
   begin
      ArtificialIntelligence_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NullAI_Access is
      This : constant NullAI_Access := new NullAI;
   begin
      NullAI_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out NullAI; allBinaryLayerManager_Param : access AllBinaryLayerManager'Class) is
      allBinaryLayerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
   begin
        null;
   end processAI;

end org.allbinary.game.ag.ai.NullAI_Package;


