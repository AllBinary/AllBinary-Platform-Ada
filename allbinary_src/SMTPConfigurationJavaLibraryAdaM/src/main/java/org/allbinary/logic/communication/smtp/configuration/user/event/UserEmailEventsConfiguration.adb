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


package body org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package is

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
        This.init;
   end Initialize;

   function Create return UserEmailEventsConfiguration_Access is
      This : constant UserEmailEventsConfiguration_Access := new UserEmailEventsConfiguration;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out UserEmailEventsConfiguration'Class; hashMap : HashMap_Access) is
   begin
      Initialize_Fields (This);
        This.init;
   end Initialize;

   function Create (hashMap : HashMap_Access) return UserEmailEventsConfiguration_Access is
      This : constant UserEmailEventsConfiguration_Access := new UserEmailEventsConfiguration;
   begin
      Initialize (This.all, hashMap);
      return This;
   end Create;

   procedure init (This : in out UserEmailEventsConfiguration) is
   begin
        This.emailEventHashMap := StdUtil_Package.getInstance.createHashMap;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            This.logUtil.putF (This.commonStrings.CONSTRUCTOR, This'Unchecked_Access, To_Unbounded_String (" Constructor"));
        end if;
   end init;

   function getEventConfigurationHashMap (This : in out UserEmailEventsConfiguration) return HashMap_Access is
   begin
        return This.emailEventHashMap;
   end getEventConfigurationHashMap;

   procedure addUserEmailEventConfiguration (This : in out UserEmailEventsConfiguration; userEmailEventConfigurationInterface : UserEmailEventConfigurationInterface_Access) is
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            This.logUtil.putF (To_Unbounded_String ("Adding: ") & Java_Image (userEmailEventConfigurationInterface.log), This'Unchecked_Access, To_Unbounded_String ("addUserEmailEventConfiguration"));
        end if;
        This.emailEventHashMap.put (userEmailEventConfigurationInterface.getName, userEmailEventConfigurationInterface);
   end addUserEmailEventConfiguration;

   --  throws Exception
   function getEventListener (This : in out UserEmailEventsConfiguration; abeClientInformation : AbeClientInformationInterface_Access; userEmailEventNameData : UserEmailEventNameData_Access; userInterface : UserInterface_Access) return UserEmailEventListenerInterface_Access is
      userEmailEventConfigurationInterface : UserEmailEventConfigurationInterface_Access;
   begin
        userEmailEventConfigurationInterface := UserEmailEventConfigurationInterface_Access (This.emailEventHashMap.get (userEmailEventNameData.toString));
        return UserEmailEventListenerFactory_Package.getInstance (abeClientInformation, userEmailEventConfigurationInterface, userInterface);
   end getEventListener;

   procedure getEventConfigurationHashMap (This : in out UserEmailEventsConfiguration) is
      Java_Result : constant HashMap_Access := UserEmailEventsConfiguration'Class (This).getEventConfigurationHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEventConfigurationHashMap;

   procedure getEventListener (This : in out UserEmailEventsConfiguration; abeClientInformation : AbeClientInformationInterface_Access; userEmailEventNameData : UserEmailEventNameData_Access; userInterface : UserInterface_Access) is
      Java_Result : constant UserEmailEventListenerInterface_Access := UserEmailEventsConfiguration'Class (This).getEventListener (abeClientInformation, userEmailEventNameData, userInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEventListener;

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration_Package;


