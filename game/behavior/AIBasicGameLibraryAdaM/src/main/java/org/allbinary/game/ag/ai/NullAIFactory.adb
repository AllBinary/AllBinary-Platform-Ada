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


   function getInstance (This : in out NullAIFactory; hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return ArtificialIntelligenceInterface_Access is
   begin
        return NullAIFactory_Package.NULL_AI;
   end getInstance;

   function getInstance return ArtificialIntelligenceInterface_Access is
   begin
        return NullAIFactory_Package.NULL_AI;
   end getInstance;

   procedure getInstance (This : in out NullAIFactory; hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) is
      Java_Result : constant ArtificialIntelligenceInterface_Access := NullAIFactory'Class (This).getInstance (hashtable, ownerLayerInterface, gameInput);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   NULL_AI := NullAI_Package.Create;

end org.allbinary.game.ag.ai.NullAIFactory_Package;


