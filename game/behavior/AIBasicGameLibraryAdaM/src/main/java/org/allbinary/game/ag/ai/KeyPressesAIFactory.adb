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


with org.allbinary.game.configuration.feature.InputFeatureFactory_Package; use org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
with org.allbinary.game.ag.ai.MultiKeyPressesAI_Package; use org.allbinary.game.ag.ai.MultiKeyPressesAI_Package;
with org.allbinary.game.ag.ai.KeyPressesAI_Package; use org.allbinary.game.ag.ai.KeyPressesAI_Package;

package body org.allbinary.game.ag.ai.KeyPressesAIFactory_Package is

   package InputFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
   procedure Initialize_Fields (This : in out KeyPressesAIFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out KeyPressesAIFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return KeyPressesAIFactory_Access is
      This : constant KeyPressesAIFactory_Access := new KeyPressesAIFactory;
   begin
      KeyPressesAIFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out KeyPressesAIFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return ArtificialIntelligenceInterface_Access is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
      isSingleKeyProcessing : Boolean;
   begin
        isSingleKeyProcessing := InputFeatureFactory_Package.getInstance.isSingleKeyProcessing;
        if isSingleKeyProcessing then
            return ArtificialIntelligenceInterface_Access (KeyPressesAI_Package.Create (hashtable, ownerLayerInterface, gameInput));
        else
            return ArtificialIntelligenceInterface_Access (MultiKeyPressesAI_Package.Create (hashtable, ownerLayerInterface, gameInput));
        end if;
   end getInstance;

   procedure getInstance (This : in out KeyPressesAIFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      Java_Result : constant ArtificialIntelligenceInterface_Access := KeyPressesAIFactory'Class (This).getInstance (hashtable_Param, ownerLayerInterface_Param, gameInput_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.ag.ai.KeyPressesAIFactory_Package;


