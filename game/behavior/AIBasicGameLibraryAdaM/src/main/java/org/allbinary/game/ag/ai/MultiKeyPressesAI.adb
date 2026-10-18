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


package body org.allbinary.game.ag.ai.MultiKeyPressesAI_Package is

   procedure Initialize_Fields (This : in out MultiKeyPressesAI'Class) is
   begin
      null;
      This.toggleTimeHelper := TimeDelayHelper_Package.Create (600);
      This.gameTickTimeDelayHelper := GameTickTimeDelayHelperFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out MultiKeyPressesAI'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
   begin
        KeyPressesAI_Package.Initialize (This, hashtable, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        MultiKeyPressesAI'Class (This).update;
   end Initialize;

   function Create (hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return MultiKeyPressesAI_Access is
      This : constant MultiKeyPressesAI_Access := new MultiKeyPressesAI;
   begin
      MultiKeyPressesAI_Package.Initialize (This.all, hashtable_Param, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out MultiKeyPressesAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
   begin
        null;
   end processAI;

   --  throws Exception
   procedure update (This : in out MultiKeyPressesAI) is
      gameInput : GameInput_Access;
      keys : Integer_Array_Access;
      size : Integer;
      key : Integer;
      index : Integer;
   begin
        gameInput := MultiKeyPressesAI'Class (This).getGameInput;
        keys := This.keys;
        size := keys'Length;
        if MultiKeyPressesAI'Class (This).isOn then
            for index in 0 .. (size) - 1 loop
                key := keys (index).intValue;
                if (key) /= (-(1)) then
                    gameInput.add (This.gameKeyEventFactory.getInstanceForKey (MultiKeyPressesAI_Access'(This'Unchecked_Access), key));
                end if;
            end loop;
        else
            for index in 0 .. (size) - 1 loop
                key := keys (index).intValue;
                if (key) /= (-(1)) then
                    gameInput.addForRemoval (This.gameKeyEventFactory.getInstanceForKey (MultiKeyPressesAI_Access'(This'Unchecked_Access), key));
                end if;
            end loop;
        end if;
   end update;

   --  throws Exception
   procedure toggle (This : in out MultiKeyPressesAI) is
   begin
        if This.toggleTimeHelper.isTime (This.gameTickTimeDelayHelper.startTime) then
            KeyPressesAI (This).toggle;
            MultiKeyPressesAI'Class (This).update;
        end if;
   end toggle;

   --  throws Exception
   procedure disable (This : in out MultiKeyPressesAI) is
   begin
        if This.toggleTimeHelper.isTime (This.gameTickTimeDelayHelper.startTime) then
            KeyPressesAI (This).disable;
            MultiKeyPressesAI'Class (This).update;
        end if;
   end disable;

   --  throws Exception
   procedure enable (This : in out MultiKeyPressesAI) is
   begin
        if This.toggleTimeHelper.isTime (This.gameTickTimeDelayHelper.startTime) then
            KeyPressesAI (This).enable;
            MultiKeyPressesAI'Class (This).update;
        end if;
   end enable;

end org.allbinary.game.ag.ai.MultiKeyPressesAI_Package;


