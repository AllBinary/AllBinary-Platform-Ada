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


package body org.allbinary.game.ag.ai.scroller.TerrainPatrolAIFactory_Package is

   procedure Initialize_Fields (This : in out TerrainPatrolAIFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TerrainPatrolAIFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TerrainPatrolAIFactory_Access is
      This : constant TerrainPatrolAIFactory_Access := new TerrainPatrolAIFactory;
   begin
      TerrainPatrolAIFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out TerrainPatrolAIFactory; hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return ArtificialIntelligenceInterface_Access is
   begin
        hashtable.put (BasePatrolAI_Package.MAX_DISTANCE, SmallIntegerSingletonFactory_Package.getInstance.getAt (220));
        return TerrainPatrolAI_Package.Create (hashtable, ownerLayerInterface, gameInput);
   end getInstance;

   procedure getInstance (This : in out TerrainPatrolAIFactory; hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) is
      Java_Result : constant ArtificialIntelligenceInterface_Access := TerrainPatrolAIFactory'Class (This).getInstance (hashtable, ownerLayerInterface, gameInput);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.ag.ai.scroller.TerrainPatrolAIFactory_Package;


