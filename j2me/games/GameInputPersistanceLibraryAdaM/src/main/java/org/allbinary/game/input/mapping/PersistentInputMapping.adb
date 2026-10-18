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


package body org.allbinary.game.input.mapping.PersistentInputMapping_Package is

   procedure Initialize_Fields (This : in out PersistentInputMapping'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.enumerationUtil := EnumerationUtil_Package.getInstance;
      This.inputMapping := InputToGameKeyMapping_Package.Create;
      This.inputMappingEventListenerInterface := NullInputMappingEventListener_Package.NULL_INPUT_MAPPING_EVENT_LISTENER;
      
      This.inputMappingEvent := InputMappingEvent_Package.Create (PersistentInputMapping_Access'(This'Unchecked_Access));
   end Initialize_Fields;


   function getNullInstance return PersistentInputMapping_Access is
   begin
        if (PersistentInputMapping_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            PersistentInputMapping_Package.instance := PersistentInputMapping_Package.Create (GamePersistanceStrings_Package.getInstance.SAVED_INPUT_CONFIGURATION_RECORD_ID);
        end if;
        return PersistentInputMapping_Access (PersistentInputMapping_Package.instance);
   end getNullInstance;

   procedure Initialize (This : in out PersistentInputMapping'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.inputPersistance := InputPersistance_Package.Create (name);
   end Initialize;

   function Create (name : Unbounded_String) return PersistentInputMapping_Access is
      This : constant PersistentInputMapping_Access := new PersistentInputMapping;
   begin
      PersistentInputMapping_Package.Initialize (This.all, name);
      return This;
   end Create;

   function getTotalMapped (This : in out PersistentInputMapping) return Integer is
   begin
        return PersistentInputMapping'Class (This).getInputMapping.getHashtable.size;
   end getTotalMapped;

   function isDefaultNew (This : in out PersistentInputMapping) return Boolean is
   begin
        return False;
   end isDefaultNew;

   function getDefault (This : in out PersistentInputMapping) return InputToGameKeyMapping_Access is
   begin
        return InputToGameKeyMapping_Package.getNullInstance;
   end getDefault;

   --  throws Exception
   procedure setDefault (This : in out PersistentInputMapping; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
   begin
        PersistentInputMapping'Class (This).getInputMapping.removeAll;
        PersistentInputMapping'Class (This).getInputMapping.addMapping (PersistentInputMapping'Class (This).getDefault);
        PersistentInputMapping'Class (This).save (abeClientInformation);
   end setDefault;

   --  throws Exception
   procedure update (This : in out PersistentInputMapping; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
   begin
        This.inputPersistance.deleteAll (abeClientInformation);
        PersistentInputMapping'Class (This).save (abeClientInformation);
   end update;

   --  throws Exception
   procedure save (This : in out PersistentInputMapping; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
   begin
        This.inputPersistance.save (abeClientInformation, PersistentInputMapping'Class (This).getInputMapping.getHashtable);
        This.inputMappingEvent.setInputToGameKeyMapping (PersistentInputMapping'Class (This).getInputMapping);
        if (PersistentInputMapping'Class (This).getInputMappingEventListenerInterface) /= (null) then
            PersistentInputMapping'Class (This).getInputMappingEventListenerInterface.onInputMappingEvent (This.inputMappingEvent);
        end if;
   end save;

   --  throws Exception
   procedure init (This : in out PersistentInputMapping; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      list : BasicArrayList_Access;
      totalMappedTo : Integer;
      size : Integer;
      hashtable : ABHashtable_Access;
      enumeration : Enumeration_Access;
      mappedToInput : Input_Access;
      gameActionInput : Input_Access;
      index : Integer;
      stringBuffer : StringMaker_Access;
   begin
        This.logUtil.putF (This.commonStrings.START, PersistentInputMapping_Access'(This'Unchecked_Access), This.commonStrings.INIT);
        begin
            This.inputPersistance.loadAll (abeClientInformation);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putOE (This.commonStrings.EXCEPTION_Id, PersistentInputMapping_Access'(This'Unchecked_Access), This.commonStrings.INIT, e);
            This.inputPersistance.deleteRecoreStore (abeClientInformation);
            PersistentInputMapping'Class (This).setDefault (abeClientInformation);
            This.inputPersistance.loadAll (abeClientInformation);
                end;
        end;
        list := This.inputPersistance.getList;
        totalMappedTo := 0;
        size := list.size;
        hashtable := null;
        enumeration := null;
        mappedToInput := null;
        gameActionInput := null;
        for index in 0 .. (size) - 1 loop
            hashtable := ABHashtable_Access (list.objectArray (index));
            enumeration := hashtable.keys;
            while This.enumerationUtil.hasMoreElements (enumeration) loop
                mappedToInput := Input_Access (This.enumerationUtil.nextElement (enumeration));
                gameActionInput := Input_Access (hashtable.get (mappedToInput));
                totalMappedTo := totalMappedTo + 1;
                PersistentInputMapping'Class (This).getInputMapping.add (gameActionInput, mappedToInput);
            end loop;
        end loop;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("End - Total Loaded Keys Mapped: "));
        stringBuffer.appendint (PersistentInputMapping'Class (This).getTotalMapped);
        stringBuffer.append (To_Unbounded_String (" to: "));
        stringBuffer.appendint (totalMappedTo);
        This.logUtil.putF (stringBuffer.toString, PersistentInputMapping_Access'(This'Unchecked_Access), This.commonStrings.INIT);
   end init;

   procedure setInputMappingEventListenerInterface (This : in out PersistentInputMapping; inputMappingEventListenerInterface_Param : access InputMappingEventListenerInterface_Package.InputMappingEventListenerInterface'Class) is
      inputMappingEventListenerInterface : constant InputMappingEventListenerInterface_Access := InputMappingEventListenerInterface_Access (inputMappingEventListenerInterface_Param);
   begin
        This.inputMappingEventListenerInterface := inputMappingEventListenerInterface;
   end setInputMappingEventListenerInterface;

   function getInputMappingEventListenerInterface (This : in out PersistentInputMapping) return InputMappingEventListenerInterface_Access is
   begin
        return This.inputMappingEventListenerInterface;
   end getInputMappingEventListenerInterface;

   function getInputMapping (This : in out PersistentInputMapping) return InputToGameKeyMapping_Access is
   begin
        return This.inputMapping;
   end getInputMapping;

   --  throws Exception
   function isDelete (This : in out PersistentInputMapping; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
        return False;
   end isDelete;

   --  throws Exception
   function isSystemInput (This : in out PersistentInputMapping; input_Param : access Input_Package.Input'Class) return Boolean is
      input : constant Input_Access := Input_Access (input_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
        return False;
   end isSystemInput;

   procedure isDelete (This : in out PersistentInputMapping; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := PersistentInputMapping'Class (This).isDelete (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDelete;

   procedure isSystemInput (This : in out PersistentInputMapping; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := PersistentInputMapping'Class (This).isSystemInput (input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSystemInput;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.input.mapping.PersistentInputMapping_Package;


