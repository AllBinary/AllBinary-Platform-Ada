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


   procedure Initialize (This : in out MultiKeyPressesAI'Class; hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) is
   begin
        KeyPressesAI_Package.Initialize (This, hashtable, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        This.update;
   end Initialize;

   function Create (hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return MultiKeyPressesAI_Access is
      This : constant MultiKeyPressesAI_Access := new MultiKeyPressesAI;
   begin
      Initialize (This.all, hashtable, ownerLayerInterface, gameInput);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out MultiKeyPressesAI; allBinaryLayerManager : AllBinaryLayerManager_Access) is
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
        gameInput := This.getGameInput;
        keys := This.keys;
        size := keys'Length;
        if This.isOn then
            for index in 0 .. (size) - 1 loop
                key := keys (index).intValue;
                if (key) /= (-(1)) then
                    gameInput.add (This.gameKeyEventFactory.getInstanceForKey (This'Unchecked_Access, key));
                end if;
            end loop;
        else
            for index in 0 .. (size) - 1 loop
                key := keys (index).intValue;
                if (key) /= (-(1)) then
                    gameInput.addForRemoval (This.gameKeyEventFactory.getInstanceForKey (This'Unchecked_Access, key));
                end if;
            end loop;
        end if;
   end update;

   --  throws Exception
   procedure toggle (This : in out MultiKeyPressesAI) is
   begin
        if This.toggleTimeHelper.isTime (This.gameTickTimeDelayHelper.startTime) then
            KeyPressesAI (This).toggle;
            This.update;
        end if;
   end toggle;

   --  throws Exception
   procedure disable (This : in out MultiKeyPressesAI) is
   begin
        if This.toggleTimeHelper.isTime (This.gameTickTimeDelayHelper.startTime) then
            KeyPressesAI (This).disable;
            This.update;
        end if;
   end disable;

   --  throws Exception
   procedure enable (This : in out MultiKeyPressesAI) is
   begin
        if This.toggleTimeHelper.isTime (This.gameTickTimeDelayHelper.startTime) then
            KeyPressesAI (This).enable;
            This.update;
        end if;
   end enable;

end org.allbinary.game.ag.ai.MultiKeyPressesAI_Package;


