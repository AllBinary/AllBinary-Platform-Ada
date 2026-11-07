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


with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.UserInterface_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.smtp.BasicEmail_Package; use org.allbinary.logic.communication.smtp.BasicEmail_Package;
with org.allbinary.logic.communication.smtp.EmailInterface_Package; use org.allbinary.logic.communication.smtp.EmailInterface_Package;
with org.allbinary.logic.communication.smtp.event.EmailEvent_Package; use org.allbinary.logic.communication.smtp.event.EmailEvent_Package;
with org.allbinary.logic.communication.smtp.event.EmailEvent_Package_References;
with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
with org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package; use org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package;
with org.allbinary.logic.communication.smtp.AbEmail_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.smtp.Email_Package;
with org.allbinary.logic.communication.smtp.queue.EmailQueueInterface_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.logic.communication.smtp.event.modules.event.user.UserEmailEventListenerModule_Package is

   package BasicEmail_Package renames Standard.org.allbinary.logic.communication.smtp.BasicEmail_Package;
   package EmailInterface_Package renames Standard.org.allbinary.logic.communication.smtp.EmailInterface_Package;
   package EmailQueueFactory_Package renames Standard.org.allbinary.logic.communication.smtp.queue.EmailQueueFactory_Package;
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
   subtype EmailEvent_Access is org.allbinary.logic.communication.smtp.event.EmailEvent_Package_References.EmailEvent_Access;
   function "=" (Left, Right : EmailEvent_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.EmailEvent_Package_References."=";
   subtype EmailEvent_Access_Array is org.allbinary.logic.communication.smtp.event.EmailEvent_Package_References.EmailEvent_Access_Array;
   function "=" (Left, Right : EmailEvent_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.EmailEvent_Package_References."=";
   subtype EmailEvent_Access_Array_Access is org.allbinary.logic.communication.smtp.event.EmailEvent_Package_References.EmailEvent_Access_Array_Access;
   function "=" (Left, Right : EmailEvent_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.EmailEvent_Package_References."=";
   subtype EmailEvent_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.event.EmailEvent_Package_References.EmailEvent_Access_Array_Access_Array;
   function "=" (Left, Right : EmailEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.EmailEvent_Package_References."=";
   subtype EmailEvent_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.event.EmailEvent_Package_References.EmailEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EmailEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.EmailEvent_Package_References."=";
   procedure Initialize_Fields (This : in out UserEmailEventListenerModule'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out UserEmailEventListenerModule'Class; userInterface_Param : access UserInterface_Package.UserInterface'Class) is
      userInterface : constant UserInterface_Access := UserInterface_Access (userInterface_Param);
   begin
      Initialize_Fields (This);
        This.userInterface := userInterface;
   end Initialize;

   function Create (userInterface_Param : access UserInterface_Package.UserInterface'Class) return UserEmailEventListenerModule_Access is
      This : constant UserEmailEventListenerModule_Access := new UserEmailEventListenerModule;
   begin
      UserEmailEventListenerModule_Package.Initialize (This.all, userInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure onEmailSendFailure (This : in out UserEmailEventListenerModule; emailEvent_Param : access EmailEvent_Package.EmailEvent'Class) is
      emailEvent : constant EmailEvent_Access := EmailEvent_Access (emailEvent_Param);
      to : Unbounded_String;
      email : BasicEmail_Access;
   begin
        to := This.userInterface.getSecondaryEmail;
        email := BasicEmail_Package.Create (emailEvent.getEmailInfo, to);
        EmailQueueFactory_Package.getInstance.offer (EmailInterface_Access (email.getEmail));
   end onEmailSendFailure;

   --  throws Exception
   procedure onEmailSendRequest (This : in out UserEmailEventListenerModule; emailEvent_Param : access EmailEvent_Package.EmailEvent'Class) is
      emailEvent : constant EmailEvent_Access := EmailEvent_Access (emailEvent_Param);
      to : Unbounded_String;
      email : BasicEmail_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            This.logUtil.putF (To_Unbounded_String ("Add Email To Que For Sending: ") & emailEvent.toString, UserEmailEventListenerModule_Access'(This'Unchecked_Access), To_Unbounded_String ("onEmailSendRequest"));
        end if;
        to := This.userInterface.getMainEmail;
        email := BasicEmail_Package.Create (emailEvent.getEmailInfo, to);
        EmailQueueFactory_Package.getInstance.offer (EmailInterface_Access (email.getEmail));
   end onEmailSendRequest;

end org.allbinary.logic.communication.smtp.event.modules.event.user.UserEmailEventListenerModule_Package;


