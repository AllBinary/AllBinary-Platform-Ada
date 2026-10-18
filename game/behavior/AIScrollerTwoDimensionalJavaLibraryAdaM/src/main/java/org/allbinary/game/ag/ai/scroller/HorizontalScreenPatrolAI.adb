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


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.rand.MyRandomFactory_Package; use org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package; use org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;

package body org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package MyRandomFactory_Package renames Standard.org.allbinary.game.rand.MyRandomFactory_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package SecondaryPlayerQueueFactory_Package renames Standard.org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
   procedure Initialize_Fields (This : in out HorizontalScreenPatrolAI'Class) is
   begin
      null;
      This.keyDirection := Canvas_Package.LEFT;
      This.displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
      This.firingX := This.displayInfoSingleton.getLastHalfWidth;
      This.firedIndex := 0;
      This.MAX_FIRE := 28;
      This.timeDelayHelper := TimeDelayHelper_Package.Create (240);
      This.secondaryPlayerQueue := SecondaryPlayerQueueFactory_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out HorizontalScreenPatrolAI'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        This.sound_Case := Sound_Access (hashtable.get (HorizontalScreenPatrolAI_Package.SOUND));
        if (This.sound_Case) = (null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Sound Provided!!")));
        end if;
   end Initialize;

   function Create (hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return HorizontalScreenPatrolAI_Access is
      This : constant HorizontalScreenPatrolAI_Access := new HorizontalScreenPatrolAI;
   begin
      HorizontalScreenPatrolAI_Package.Initialize (This.all, hashtable_Param, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out HorizontalScreenPatrolAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      layerInterface : AllBinaryLayer_Access;
      currentOwnerLayerX : Integer;
      y : Integer;
      gameLayerManager : AllBinaryGameLayerManager_Access;
      FIRE : Integer;
   begin
        BasicAI (This).processKeyAI (This.keyDirection);
        if This.timeDelayHelper.isTimeTNT then
            layerInterface := HorizontalScreenPatrolAI'Class (This).getOwnerLayerInterface;
            currentOwnerLayerX := layerInterface.getXP;
            if (currentOwnerLayerX) < (-(layerInterface.getWidth)) then
                y := MyRandomFactory_Package.getInstance.getAbsoluteNextIntAllowZero (50);
                layerInterface.setPosition (((This.displayInfoSingleton.getLastWidth) + (layerInterface.getWidth)) + (50), y, layerInterface.getZP);
                This.firedIndex := 0;
                This.firingX := (This.displayInfoSingleton.getLastHalfWidth) + (MyRandomFactory_Package.getInstance.getNextInt (This.displayInfoSingleton.getLastHalfWidth));
                This.secondaryPlayerQueue.add (This.sound_Case);
            end if;
            if ((currentOwnerLayerX) < (This.firingX)) and then ((currentOwnerLayerX) > (-(layerInterface.getWidth))) then
                BasicAI (This).processKeyAI (Canvas_Package.KEY_NUM1);
                gameLayerManager := AllBinaryGameLayerManager_Access (allBinaryLayerManager);
                FIRE := Java_Shift_Right_Arithmetic (((gameLayerManager.getGameInfo.getCurrentLevel) + (12)), 2);
                if (FIRE) > (This.MAX_FIRE) then
                    FIRE := This.MAX_FIRE;
                end if;
                if (This.firedIndex) > (FIRE) then
                    This.firedIndex := 0;
                    This.firingX := Integer'First;
                end if;
                This.firedIndex := This.firedIndex + 1;
            end if;
        end if;
   end processAI;

   procedure nextDirection (This : in out HorizontalScreenPatrolAI) is
   begin
        null;
   end nextDirection;

begin
   null;
   SOUND := SmallIntegerSingletonFactory_Package.getInstance.getAt (433);

end org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI_Package;


