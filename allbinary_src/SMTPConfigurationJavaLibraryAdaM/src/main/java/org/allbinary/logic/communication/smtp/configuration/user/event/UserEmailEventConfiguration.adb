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


package body org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration_Package is

   procedure Initialize_Fields (This : in out UserEmailEventConfiguration'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.name := Null_Unbounded_String;
      This.eventListenerClassPath := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out UserEmailEventConfiguration'Class) is
   begin
      Initialize_Fields (This);
        This.setName (StringUtil_Package.getInstance.EMPTY_STRING);
        This.setEventListenerClassPath (StringUtil_Package.getInstance.EMPTY_STRING);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            This.logUtil.putF (To_Unbounded_String ("New"), UserEmailEventConfiguration_Access'(This'Unchecked_Access), To_Unbounded_String (" Constructor"));
        end if;
   end Initialize;

   function Create return UserEmailEventConfiguration_Access is
      This : constant UserEmailEventConfiguration_Access := new UserEmailEventConfiguration;
   begin
      UserEmailEventConfiguration_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out UserEmailEventConfiguration'Class; hashMap_Param : access HashMap'Class) is
      hashMap : HashMap_Access := HashMap_Access (hashMap_Param);
   begin
      Initialize_Fields (This);
        This.setName (Unbounded_String (hashMap.get (UserEmailEventConfigurationData_Package.NAME)));
        This.setEventListenerClassPath (Unbounded_String (hashMap.get (UserEmailEventConfigurationData_Package.LISTENER_CLASSPATH)));
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            This.logUtil.putF (To_Unbounded_String ("Log: ") & Java_Image (This.log), UserEmailEventConfiguration_Access'(This'Unchecked_Access), To_Unbounded_String (" Constructor"));
        end if;
   end Initialize;

   function Create (hashMap_Param : access HashMap'Class) return UserEmailEventConfiguration_Access is
      This : constant UserEmailEventConfiguration_Access := new UserEmailEventConfiguration;
   begin
      UserEmailEventConfiguration_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   function getName (This : in out UserEmailEventConfiguration) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure setName (This : in out UserEmailEventConfiguration; name : Unbounded_String) is
   begin
        This.name := name;
   end setName;

   function getEventListenerClassPath (This : in out UserEmailEventConfiguration) return Unbounded_String is
   begin
        return This.eventListenerClassPath;
   end getEventListenerClassPath;

   procedure setEventListenerClassPath (This : in out UserEmailEventConfiguration; eventListenerClassPath : Unbounded_String) is
   begin
        This.eventListenerClassPath := eventListenerClassPath;
   end setEventListenerClassPath;

   function log (This : in out UserEmailEventConfiguration) return Unbounded_String is
   begin
        return To_Unbounded_String ("" & ASCII.LF & "User Email Event Log Info:") & To_Unbounded_String ("" & ASCII.LF & "Name: ") & This.getName & To_Unbounded_String ("" & ASCII.LF & "EventListenerClassPath: ") & Java_Image (This.getEventListenerClassPath);
   end log;

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration_Package;


