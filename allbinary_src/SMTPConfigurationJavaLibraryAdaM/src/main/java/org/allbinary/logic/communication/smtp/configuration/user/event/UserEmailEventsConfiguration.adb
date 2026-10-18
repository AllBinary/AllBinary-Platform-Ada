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


with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory_Package;

package body org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
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
            This.logUtil.putF (To_Unbounded_String ("Adding: ") & Java_Image (userEmailEventConfigurationInterface.log), UserEmailEventsConfiguration_Access'(This'Unchecked_Access), To_Unbounded_String ("addUserEmailEventConfiguration"));
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
        return UserEmailEventListenerFactory_Package.getInstance (abeClientInformation, userEmailEventConfigurationInterface, userInterface);
   end getEventListener;

   procedure getEventListener (This : in out UserEmailEventsConfiguration; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; userInterface_Param : access UserInterface_Package.UserInterface'Class) is
      Java_Result : constant UserEmailEventListenerInterface_Access := UserEmailEventsConfiguration'Class (This).getEventListener (abeClientInformation_Param, userEmailEventNameData_Param, userInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEventListener;

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package;


