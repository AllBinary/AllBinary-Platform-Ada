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


package body org.allbinary.game.ag.ai.LurchRotationAIFactory_Package is

   procedure Initialize_Fields (This : in out LurchRotationAIFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LurchRotationAIFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LurchRotationAIFactory_Access is
      This : constant LurchRotationAIFactory_Access := new LurchRotationAIFactory;
   begin
      LurchRotationAIFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out LurchRotationAIFactory; hashtable_Param : access ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer'Class; gameInput_Param : access GameInput'Class) return ArtificialIntelligenceInterface_Access is
      hashtable : ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      ownerLayerInterface : AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : GameInput_Access := GameInput_Access (gameInput_Param);
   begin
        return LurchRotationAI_Package.Create (ownerLayerInterface, gameInput);
   end getInstance;

   procedure getInstance (This : in out LurchRotationAIFactory; hashtable_Param : access ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer'Class; gameInput_Param : access GameInput'Class) is
      Java_Result : constant ArtificialIntelligenceInterface_Access := LurchRotationAIFactory'Class (This).getInstance (hashtable_Param, ownerLayerInterface_Param, gameInput_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.ag.ai.LurchRotationAIFactory_Package;


