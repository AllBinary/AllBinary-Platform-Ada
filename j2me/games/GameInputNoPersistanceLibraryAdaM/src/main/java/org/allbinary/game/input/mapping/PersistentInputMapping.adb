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


with java.util.Enumeration_Package; use java.util.Enumeration_Package;
with org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package; use org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.Input_Package_References;
with org.allbinary.game.input.InputPersistance_Package; use org.allbinary.game.input.InputPersistance_Package;
with org.allbinary.game.input.InputPersistance_Package_References;
with org.allbinary.game.input.mapping.event.InputMappingEvent_Package; use org.allbinary.game.input.mapping.event.InputMappingEvent_Package;
with org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References;
with org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package; use org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package;
with org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References;
with org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package; use org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.EnumerationUtil_Package; use org.allbinary.util.EnumerationUtil_Package;
with org.allbinary.util.EnumerationUtil_Package_References;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package; use org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.game.configuration.persistance.BasicPersitance_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKeyFactory_Package;
with javax.microedition.lcdui.Gauge_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.util.HashtableUtil_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.allbinary.game.input.mapping.InputMapping_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.game.configuration.persistance.PersistanceStrings_Package;
with org.allbinary.persistance.PlatformRecordIdUtil_Package;
with org.microemu.device.ui.PointerEvent_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.game.input.mapping.PersistentInputMapping_Package is

   package Enumeration_Package renames Standard.java.util.Enumeration_Package;
   package GamePersistanceStrings_Package renames Standard.org.allbinary.game.configuration.persistance.GamePersistanceStrings_Package;
   package NullInputMappingEventListener_Package renames Standard.org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   subtype Input_Access is org.allbinary.game.input.Input_Package_References.Input_Access;
   function "=" (Left, Right : Input_Access) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   subtype Input_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array;
   function "=" (Left, Right : Input_Access_Array) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   subtype Input_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access;
   function "=" (Left, Right : Input_Access_Array_Access) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   subtype Input_Access_Array_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array;
   function "=" (Left, Right : Input_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   subtype Input_Access_Array_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Input_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   subtype InputPersistance_Access is org.allbinary.game.input.InputPersistance_Package_References.InputPersistance_Access;
   function "=" (Left, Right : InputPersistance_Access) return Boolean renames org.allbinary.game.input.InputPersistance_Package_References."=";
   subtype InputPersistance_Access_Array is org.allbinary.game.input.InputPersistance_Package_References.InputPersistance_Access_Array;
   function "=" (Left, Right : InputPersistance_Access_Array) return Boolean renames org.allbinary.game.input.InputPersistance_Package_References."=";
   subtype InputPersistance_Access_Array_Access is org.allbinary.game.input.InputPersistance_Package_References.InputPersistance_Access_Array_Access;
   function "=" (Left, Right : InputPersistance_Access_Array_Access) return Boolean renames org.allbinary.game.input.InputPersistance_Package_References."=";
   subtype InputPersistance_Access_Array_Access_Array is org.allbinary.game.input.InputPersistance_Package_References.InputPersistance_Access_Array_Access_Array;
   function "=" (Left, Right : InputPersistance_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.InputPersistance_Package_References."=";
   subtype InputPersistance_Access_Array_Access_Array_Access is org.allbinary.game.input.InputPersistance_Package_References.InputPersistance_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputPersistance_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.InputPersistance_Package_References."=";
   subtype InputMappingEvent_Access is org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References.InputMappingEvent_Access;
   function "=" (Left, Right : InputMappingEvent_Access) return Boolean renames org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References."=";
   subtype InputMappingEvent_Access_Array is org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References.InputMappingEvent_Access_Array;
   function "=" (Left, Right : InputMappingEvent_Access_Array) return Boolean renames org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References."=";
   subtype InputMappingEvent_Access_Array_Access is org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References.InputMappingEvent_Access_Array_Access;
   function "=" (Left, Right : InputMappingEvent_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References."=";
   subtype InputMappingEvent_Access_Array_Access_Array is org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References.InputMappingEvent_Access_Array_Access_Array;
   function "=" (Left, Right : InputMappingEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References."=";
   subtype InputMappingEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References.InputMappingEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputMappingEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.event.InputMappingEvent_Package_References."=";
   subtype InputMappingEventListenerInterface_Access is org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References.InputMappingEventListenerInterface_Access;
   function "=" (Left, Right : InputMappingEventListenerInterface_Access) return Boolean renames org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References."=";
   subtype InputMappingEventListenerInterface_Access_Array is org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References.InputMappingEventListenerInterface_Access_Array;
   function "=" (Left, Right : InputMappingEventListenerInterface_Access_Array) return Boolean renames org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References."=";
   subtype InputMappingEventListenerInterface_Access_Array_Access is org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References.InputMappingEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : InputMappingEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References."=";
   subtype InputMappingEventListenerInterface_Access_Array_Access_Array is org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References.InputMappingEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : InputMappingEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References."=";
   subtype InputMappingEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References.InputMappingEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputMappingEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype EnumerationUtil_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access;
   function "=" (Left, Right : EnumerationUtil_Access) return Boolean renames org.allbinary.util.EnumerationUtil_Package_References."=";
   subtype EnumerationUtil_Access_Array is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array;
   function "=" (Left, Right : EnumerationUtil_Access_Array) return Boolean renames org.allbinary.util.EnumerationUtil_Package_References."=";
   subtype EnumerationUtil_Access_Array_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access;
   function "=" (Left, Right : EnumerationUtil_Access_Array_Access) return Boolean renames org.allbinary.util.EnumerationUtil_Package_References."=";
   subtype EnumerationUtil_Access_Array_Access_Array is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : EnumerationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.util.EnumerationUtil_Package_References."=";
   subtype EnumerationUtil_Access_Array_Access_Array_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EnumerationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.EnumerationUtil_Package_References."=";
   subtype InputToGameKeyMapping_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   procedure Initialize_Fields (This : in out PersistentInputMapping'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.enumerationUtil := EnumerationUtil_Package.getInstance;
      This.inputMapping := InputToGameKeyMapping_Package.Create;
      This.inputMappingEventListenerInterface := InputMappingEventListenerInterface_Access (NullInputMappingEventListener_Package.NULL_INPUT_MAPPING_EVENT_LISTENER);
      
      This.inputMappingEvent := InputMappingEvent_Package.Create (PersistentInputMapping_Access'(This'Unchecked_Access));
   end Initialize_Fields;


   function getNullInstance return PersistentInputMapping_Access is
   begin
        if (Java_Object_Access (PersistentInputMapping_Package.instance)) = (Java_Object_Access (NullUtil_Package.getInstance.NULL_OBJECT)) then
            PersistentInputMapping_Package.instance := Java_Object_Access (PersistentInputMapping_Package.Create (GamePersistanceStrings_Package.getInstance.SAVED_INPUT_CONFIGURATION_RECORD_ID));
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
      Java_Result : constant Boolean := PersistentInputMapping'Class (This).isDelete (input_Param => input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDelete;

   procedure isSystemInput (This : in out PersistentInputMapping; input_Param : access Input_Package.Input'Class) is
      Java_Result : constant Boolean := PersistentInputMapping'Class (This).isSystemInput (input_Param => input_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSystemInput;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.input.mapping.PersistentInputMapping_Package;


