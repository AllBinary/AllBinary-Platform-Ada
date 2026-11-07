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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
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
        UserEmailEventConfiguration'Class (This).setName (StringUtil_Package.getInstance.EMPTY_STRING);
        UserEmailEventConfiguration'Class (This).setEventListenerClassPath (StringUtil_Package.getInstance.EMPTY_STRING);
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

   procedure Initialize (This : in out UserEmailEventConfiguration'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
      Initialize_Fields (This);
        UserEmailEventConfiguration'Class (This).setName (Java_Unbox (hashMap.get (UserEmailEventConfigurationData_Package.NAME)));
        UserEmailEventConfiguration'Class (This).setEventListenerClassPath (Java_Unbox (hashMap.get (UserEmailEventConfigurationData_Package.LISTENER_CLASSPATH)));
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            This.logUtil.putF (To_Unbounded_String ("Log: ") & UserEmailEventConfiguration'Class (This).log, UserEmailEventConfiguration_Access'(This'Unchecked_Access), To_Unbounded_String (" Constructor"));
        end if;
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return UserEmailEventConfiguration_Access is
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
        return To_Unbounded_String ("" & ASCII.LF & "User Email Event Log Info:") & To_Unbounded_String ("" & ASCII.LF & "Name: ") & UserEmailEventConfiguration'Class (This).getName & To_Unbounded_String ("" & ASCII.LF & "EventListenerClassPath: ") & UserEmailEventConfiguration'Class (This).getEventListenerClassPath;
   end log;

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration_Package;


