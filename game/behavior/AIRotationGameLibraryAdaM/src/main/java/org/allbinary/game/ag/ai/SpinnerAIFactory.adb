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


package body org.allbinary.game.ag.ai.SpinnerAIFactory_Package is

   procedure Initialize_Fields (This : in out SpinnerAIFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out SpinnerAIFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SpinnerAIFactory_Access is
      This : constant SpinnerAIFactory_Access := new SpinnerAIFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out SpinnerAIFactory; hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return ArtificialIntelligenceInterface_Access is
      direction : Integer_Array_Access;
   begin
        direction := new Integer_Array'(0 => Canvas_Package.LEFT);
        return SpinnerAI_Package.Create (direction, ownerLayerInterface, gameInput);
   end getInstance;

   procedure getInstance (This : in out SpinnerAIFactory; hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) is
      Java_Result : constant ArtificialIntelligenceInterface_Access := SpinnerAIFactory'Class (This).getInstance (hashtable, ownerLayerInterface, gameInput);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.ag.ai.SpinnerAIFactory_Package;


