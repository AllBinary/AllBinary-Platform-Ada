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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.UserInterface_Package_References;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References;
with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package;
with org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;
with org.allbinary.logic.communication.smtp.event.EmailEvent_Package;
with org.allbinary.logic.communication.smtp.info.EmailInfo_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
with org.allbinary.business.time.Time_Package;
with org.allbinary.business.time.created.TimeCreated_Package;
with org.allbinary.business.time.modified.TimeLastModified_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package;
with org.allbinary.business.user.UserFactoryInterface_Package;
with org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;

package body org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
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
   subtype UserEmailEventListenerInterface_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access;
   function "=" (Left, Right : UserEmailEventListenerInterface_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References."=";
   subtype UserEmailEventListenerInterface_Access_Array is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access_Array;
   function "=" (Left, Right : UserEmailEventListenerInterface_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References."=";
   subtype UserEmailEventListenerInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References."=";
   subtype UserEmailEventListenerInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UserEmailEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References."=";
   subtype UserEmailEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References."=";
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
   subtype UserEmailEventConfigurationInterface_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References.UserEmailEventConfigurationInterface_Access;
   function "=" (Left, Right : UserEmailEventConfigurationInterface_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References."=";
   subtype UserEmailEventConfigurationInterface_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References.UserEmailEventConfigurationInterface_Access_Array;
   function "=" (Left, Right : UserEmailEventConfigurationInterface_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References."=";
   subtype UserEmailEventConfigurationInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References.UserEmailEventConfigurationInterface_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventConfigurationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References."=";
   subtype UserEmailEventConfigurationInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References.UserEmailEventConfigurationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UserEmailEventConfigurationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References."=";
   subtype UserEmailEventConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References.UserEmailEventConfigurationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventConfigurationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package_References."=";
   procedure Initialize_Fields (This : in out UserEmailEventsConfiguration'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.emailEventHashMap := null;
   end Initialize_Fields;


   procedure Initialize (This : in out UserEmailEventsConfiguration'Class) is
   begin
      Initialize_Fields (This);
        UserEmailEventsConfiguration'Class (This).init;
   end Initialize;

   function Create return UserEmailEventsConfiguration_Access is
      This : constant UserEmailEventsConfiguration_Access := new UserEmailEventsConfiguration;
   begin
      UserEmailEventsConfiguration_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out UserEmailEventsConfiguration'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
      Initialize_Fields (This);
        UserEmailEventsConfiguration'Class (This).init;
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return UserEmailEventsConfiguration_Access is
      This : constant UserEmailEventsConfiguration_Access := new UserEmailEventsConfiguration;
   begin
      UserEmailEventsConfiguration_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   procedure init (This : in out UserEmailEventsConfiguration) is
   begin
        This.emailEventHashMap := StdUtil_Package.getInstance.createHashMap;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            This.logUtil.putF (This.commonStrings.CONSTRUCTOR, UserEmailEventsConfiguration_Access'(This'Unchecked_Access), To_Unbounded_String (" Constructor"));
        end if;
   end init;

   function getEventConfigurationHashMap (This : in out UserEmailEventsConfiguration) return HashMap_Access is
   begin
        return This.emailEventHashMap;
   end getEventConfigurationHashMap;

   procedure addUserEmailEventConfiguration (This : in out UserEmailEventsConfiguration; userEmailEventConfigurationInterface_Param : access UserEmailEventConfigurationInterface_Package.UserEmailEventConfigurationInterface'Class) is
      userEmailEventConfigurationInterface : constant UserEmailEventConfigurationInterface_Access := UserEmailEventConfigurationInterface_Access (userEmailEventConfigurationInterface_Param);
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            This.logUtil.putF (To_Unbounded_String ("Adding: ") & userEmailEventConfigurationInterface.log, UserEmailEventsConfiguration_Access'(This'Unchecked_Access), To_Unbounded_String ("addUserEmailEventConfiguration"));
        end if;
        This.emailEventHashMap.put (Java_Box (userEmailEventConfigurationInterface.getName), userEmailEventConfigurationInterface);
   end addUserEmailEventConfiguration;

   --  throws Exception
   function getEventListener (This : in out UserEmailEventsConfiguration; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; userInterface_Param : access UserInterface_Package.UserInterface'Class) return UserEmailEventListenerInterface_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      userEmailEventNameData : constant UserEmailEventNameData_Access := UserEmailEventNameData_Access (userEmailEventNameData_Param);
      userInterface : constant UserInterface_Access := UserInterface_Access (userInterface_Param);
      userEmailEventConfigurationInterface : UserEmailEventConfigurationInterface_Access;
   begin
        userEmailEventConfigurationInterface := UserEmailEventConfigurationInterface_Access (This.emailEventHashMap.get (Java_Box (userEmailEventNameData.toString)));
        return UserEmailEventListenerInterface_Access (UserEmailEventListenerFactory_Package.getInstance (abeClientInformation, userEmailEventConfigurationInterface, userInterface));
   end getEventListener;

   procedure getEventListener (This : in out UserEmailEventsConfiguration; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; userInterface_Param : access UserInterface_Package.UserInterface'Class) is
      Java_Result : constant UserEmailEventListenerInterface_Access := UserEmailEventsConfiguration'Class (This).getEventListener (abeClientInformation_Param => abeClientInformation_Param, userEmailEventNameData_Param => userEmailEventNameData_Param, userInterface_Param => userInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEventListener;

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package;


