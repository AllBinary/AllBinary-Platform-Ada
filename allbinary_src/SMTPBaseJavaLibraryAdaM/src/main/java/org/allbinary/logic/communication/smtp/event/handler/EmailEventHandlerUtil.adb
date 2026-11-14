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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.UserInterface_Package_References;
with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package; use org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References;
with org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package; use org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package; use org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;
with org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;

package body org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package UserConfigurationInterface_Package renames Standard.org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;
   package UserEmailConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;
   package UserEmailEventsConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package;
   package UserEmailEventListenerInterface_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
   package LogUserEmailEventListenerModule_Package renames Standard.org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype UserInterface_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access;
   function "=" (Left, Right : UserInterface_Access) return Boolean renames org.allbinary.business.user.UserInterface_Package_References."=";
   subtype UserInterface_Access_Array is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array;
   function "=" (Left, Right : UserInterface_Access_Array) return Boolean renames org.allbinary.business.user.UserInterface_Package_References."=";
   subtype UserInterface_Access_Array_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access;
   function "=" (Left, Right : UserInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.UserInterface_Package_References."=";
   subtype UserInterface_Access_Array_Access_Array is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UserInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.UserInterface_Package_References."=";
   subtype UserInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.UserInterface_Package_References."=";
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
   subtype UserEmailEventNameData_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access;
   function "=" (Left, Right : UserEmailEventNameData_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References."=";
   subtype UserEmailEventNameData_Access_Array is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access_Array;
   function "=" (Left, Right : UserEmailEventNameData_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References."=";
   subtype UserEmailEventNameData_Access_Array_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventNameData_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References."=";
   subtype UserEmailEventNameData_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access_Array_Access_Array;
   function "=" (Left, Right : UserEmailEventNameData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References."=";
   subtype UserEmailEventNameData_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventNameData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References."=";
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
   subtype UserEmailEventHandler_Access is org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.UserEmailEventHandler_Access;
   function "=" (Left, Right : UserEmailEventHandler_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References."=";
   subtype UserEmailEventHandler_Access_Array is org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.UserEmailEventHandler_Access_Array;
   function "=" (Left, Right : UserEmailEventHandler_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References."=";
   subtype UserEmailEventHandler_Access_Array_Access is org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.UserEmailEventHandler_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventHandler_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References."=";
   subtype UserEmailEventHandler_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.UserEmailEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : UserEmailEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References."=";
   subtype UserEmailEventHandler_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.UserEmailEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References."=";
   procedure Initialize_Fields (This : in out EmailEventHandlerUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return EmailEventHandlerUtil_Access is
   begin
        return EmailEventHandlerUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out EmailEventHandlerUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return EmailEventHandlerUtil_Access is
      This : constant EmailEventHandlerUtil_Access := new EmailEventHandlerUtil;
   begin
      EmailEventHandlerUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getEventHandler (This : in out EmailEventHandlerUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; userVector_Param : access BasicArrayList_Package.BasicArrayList'Class) return UserEmailEventHandler_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      userEmailEventNameData : constant UserEmailEventNameData_Access := UserEmailEventNameData_Access (userEmailEventNameData_Param);
      userVector : constant BasicArrayList_Access := BasicArrayList_Access (userVector_Param);
      stringBuffer : StringMaker_Access;
      userEmailEventHandler : UserEmailEventHandler_Access;
      size : Integer;
      userInterface : UserInterface_Access;
      vector : BasicArrayList_Access;
      index : Integer;
   begin
        if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.EMAILLOGGING) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Returning UserEmailEventHandler for "));
            stringBuffer.appendint (userVector.size);
            stringBuffer.append (To_Unbounded_String (" users."));
            This.logUtil.putF (stringBuffer.toString, EmailEventHandlerUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getEventHandler"));
        end if;
        userEmailEventHandler := UserEmailEventHandler_Package.Create;
        userEmailEventHandler.addListener (LogUserEmailEventListenerModule_Package.Create);
        size := userVector.size;
        for index in 0 .. (size) - 1 loop
            userInterface := UserInterface_Access (userVector.get (index));
            vector := EmailEventHandlerUtil_Package.getUserEmailEventListenerVector (abeClientInformation, userEmailEventNameData, userInterface);
            userEmailEventHandler.addListener (vector);
        end loop;
        return userEmailEventHandler;
   end getEventHandler;

   --  throws Exception
   function getUserEmailEventListenerVector (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; userInterface_Param : access UserInterface_Package.UserInterface'Class) return BasicArrayList_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      userEmailEventNameData : constant UserEmailEventNameData_Access := UserEmailEventNameData_Access (userEmailEventNameData_Param);
      userInterface : constant UserInterface_Access := UserInterface_Access (userInterface_Param);
      userConfigurationInterface : UserConfigurationInterface_Access;
      userEmailConfigurationInterface : UserEmailConfigurationInterface_Access;
      userEmailEventsConfigurationInterface : UserEmailEventsConfigurationInterface_Access;
      userEmailEventListenerInterface : UserEmailEventListenerInterface_Access;
      vector : BasicArrayList_Access;
   begin
        userConfigurationInterface := UserConfigurationInterface_Access (userInterface.getUserConfigurationInterface);
        userEmailConfigurationInterface := UserEmailConfigurationInterface_Access (userConfigurationInterface.getUserEmailConfigurationInterface);
        userEmailEventsConfigurationInterface := UserEmailEventsConfigurationInterface_Access (userEmailConfigurationInterface.getUserEmailEventsConfigurationInterface);
        userEmailEventListenerInterface := UserEmailEventListenerInterface_Access (userEmailEventsConfigurationInterface.getEventListener (abeClientInformation, userEmailEventNameData, userInterface));
        vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        vector.add (UserEmailEventListenerInterface_Package.Java_Object_Access_From_UserEmailEventListenerInterface (userEmailEventListenerInterface));
        return vector;
   end getUserEmailEventListenerVector;

   procedure getEventHandler (This : in out EmailEventHandlerUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; userVector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant UserEmailEventHandler_Access := EmailEventHandlerUtil'Class (This).getEventHandler (abeClientInformation_Param => abeClientInformation_Param, userEmailEventNameData_Param => userEmailEventNameData_Param, userVector_Param => userVector_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEventHandler;

   procedure getUserEmailEventListenerVector (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; userInterface_Param : access UserInterface_Package.UserInterface'Class) is
      Java_Result : constant BasicArrayList_Access := getUserEmailEventListenerVector (abeClientInformation_Param => abeClientInformation_Param, userEmailEventNameData_Param => userEmailEventNameData_Param, userInterface_Param => userInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUserEmailEventListenerVector;

begin
   null;
   instance := EmailEventHandlerUtil_Package.Create;

end org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package;


