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


package body org.allbinary.game.ag.ai.scroller.RandomPatrolAI_Package is

   procedure Initialize_Fields (This : in out RandomPatrolAI'Class) is
   begin
      null;
      This.changedDirection := True;
   end Initialize_Fields;


   procedure Initialize (This : in out RandomPatrolAI'Class; hashtable_Param : access ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer'Class; gameInput_Param : access GameInput'Class) is
      hashtable : ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      ownerLayerInterface : AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : GameInput_Access := GameInput_Access (gameInput_Param);
   begin
        BasePatrolAI_Package.Initialize (This, hashtable, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        This.updateRandomDistance;
   end Initialize;

   function Create (hashtable_Param : access ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer'Class; gameInput_Param : access GameInput'Class) return RandomPatrolAI_Access is
      This : constant RandomPatrolAI_Access := new RandomPatrolAI;
   begin
      RandomPatrolAI_Package.Initialize (This.all, hashtable_Param, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   procedure updateRandomDistance (This : in out RandomPatrolAI) is
   begin
        This.currentDistance := MyRandomFactory_Package.getInstance.getAbsoluteNextInt (This.maxDistance.intValue);
   end updateRandomDistance;

   --  throws Exception
   procedure processAI (This : in out RandomPatrolAI; allBinaryLayerManager_Param : access AllBinaryLayerManager'Class) is
      allBinaryLayerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
   begin
        BasePatrolAI (This).update;
        BasePatrolAI (This).processKeyAI (This.keyDirection);
        if This.changedDirection then
            BasePatrolAI (This).processKeyAI (Canvas_Package.KEY_NUM1);
            This.updateRandomDistance;
            This.changedDirection := False;
        end if;
   end processAI;

   procedure nextDirection (This : in out RandomPatrolAI) is
   begin
        BasePatrolAI (This).nextDirection;
        This.changedDirection := True;
   end nextDirection;

end org.allbinary.game.ag.ai.scroller.RandomPatrolAI_Package;


