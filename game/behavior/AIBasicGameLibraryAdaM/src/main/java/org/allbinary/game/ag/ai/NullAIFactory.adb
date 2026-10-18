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



package body org.allbinary.game.ag.ai.NullAIFactory_Package is

   procedure Initialize_Fields (This : in out NullAIFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullAIFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullAIFactory_Access is
      This : constant NullAIFactory_Access := new NullAIFactory;
   begin
      NullAIFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out NullAIFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return ArtificialIntelligenceInterface_Access is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
   begin
        return NullAIFactory_Package.NULL_AI;
   end getInstance;

   function getInstance return ArtificialIntelligenceInterface_Access is
   begin
        return NullAIFactory_Package.NULL_AI;
   end getInstance;

   procedure getInstance (This : in out NullAIFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      Java_Result : constant ArtificialIntelligenceInterface_Access := NullAIFactory'Class (This).getInstance (hashtable_Param, ownerLayerInterface_Param, gameInput_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   NULL_AI := NullAI_Package.Create;

end org.allbinary.game.ag.ai.NullAIFactory_Package;


