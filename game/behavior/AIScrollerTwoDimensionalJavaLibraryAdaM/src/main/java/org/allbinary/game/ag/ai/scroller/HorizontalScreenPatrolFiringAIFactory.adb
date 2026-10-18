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


with org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI_Package; use org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI_Package;

package body org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolFiringAIFactory_Package is

   procedure Initialize_Fields (This : in out HorizontalScreenPatrolFiringAIFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out HorizontalScreenPatrolFiringAIFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return HorizontalScreenPatrolFiringAIFactory_Access is
      This : constant HorizontalScreenPatrolFiringAIFactory_Access := new HorizontalScreenPatrolFiringAIFactory;
   begin
      HorizontalScreenPatrolFiringAIFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out HorizontalScreenPatrolFiringAIFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return ArtificialIntelligenceInterface_Access is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
   begin
        return ArtificialIntelligenceInterface_Access (HorizontalScreenPatrolAI_Package.Create (hashtable, ownerLayerInterface, gameInput));
   end getInstance;

   procedure getInstance (This : in out HorizontalScreenPatrolFiringAIFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      Java_Result : constant ArtificialIntelligenceInterface_Access := HorizontalScreenPatrolFiringAIFactory'Class (This).getInstance (hashtable_Param, ownerLayerInterface_Param, gameInput_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolFiringAIFactory_Package;


