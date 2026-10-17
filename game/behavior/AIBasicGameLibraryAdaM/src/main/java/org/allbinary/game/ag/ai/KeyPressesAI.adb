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


package body org.allbinary.game.ag.ai.KeyPressesAI_Package is

   procedure Initialize_Fields (This : in out KeyPressesAI'Class) is
   begin
      null;
      This.on := True;
      
   end Initialize_Fields;


   procedure Initialize (This : in out KeyPressesAI'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
      objectArray : Java_Object_Access_Array_Access;
      size : Integer;
      index : Integer;
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        This.keys := new Integer_Array'(0 .. (hashtable.size) - 1 => null);
        objectArray := HashtableUtil_Package.getInstance.getKeysAsArray (hashtable);
        size := objectArray'Length;
        for index in 0 .. (size) - 1 loop
            This.keys (index) := Integer (hashtable.get (Java_Object_Access (objectArray (index))));
        end loop;
   end Initialize;

   function Create (hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return KeyPressesAI_Access is
      This : constant KeyPressesAI_Access := new KeyPressesAI;
   begin
      KeyPressesAI_Package.Initialize (This.all, hashtable_Param, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out KeyPressesAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      index : Integer;
   begin
        if This.on then
            for index in 0 .. (This.keys'Length) - 1 loop
                BasicAI (This).processKeyAI (This.keys (index).intValue);
            end loop;
        end if;
   end processAI;

   --  throws Exception
   procedure toggle (This : in out KeyPressesAI) is
   begin
        if This.isOn then
            This.setOn (False);
        else
            This.setOn (True);
        end if;
   end toggle;

   --  throws Exception
   procedure disable (This : in out KeyPressesAI) is
   begin
        This.setOn (False);
   end disable;

   --  throws Exception
   procedure enable (This : in out KeyPressesAI) is
   begin
        This.setOn (True);
   end enable;

   procedure setOn (This : in out KeyPressesAI; on : Boolean) is
   begin
        This.on := on;
   end setOn;

   function isOn (This : in out KeyPressesAI) return Boolean is
   begin
        return This.on;
   end isOn;

end org.allbinary.game.ag.ai.KeyPressesAI_Package;


