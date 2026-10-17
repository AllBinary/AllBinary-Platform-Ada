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


package body org.allbinary.logic.communication.smtp.event.modules.event.user.UserEmailEventListenerModule_Package is

   procedure Initialize_Fields (This : in out UserEmailEventListenerModule'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out UserEmailEventListenerModule'Class; userInterface : UserInterface_Access) is
   begin
      Initialize_Fields (This);
        This.userInterface := userInterface;
   end Initialize;

   function Create (userInterface : UserInterface_Access) return UserEmailEventListenerModule_Access is
      This : constant UserEmailEventListenerModule_Access := new UserEmailEventListenerModule;
   begin
      Initialize (This.all, userInterface);
      return This;
   end Create;

   --  throws Exception
   procedure onEmailSendFailure (This : in out UserEmailEventListenerModule; emailEvent : EmailEvent_Access) is
      to : Unbounded_String;
      email : BasicEmail_Access;
   begin
        to := This.userInterface.getSecondaryEmail;
        email := BasicEmail_Package.Create (emailEvent.getEmailInfo, to);
        EmailQueueFactory_Package.getInstance.offer (EmailInterface_Access (email.getEmail));
   end onEmailSendFailure;

   --  throws Exception
   procedure onEmailSendRequest (This : in out UserEmailEventListenerModule; emailEvent : EmailEvent_Access) is
      to : Unbounded_String;
      email : BasicEmail_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            This.logUtil.putF (To_Unbounded_String ("Add Email To Que For Sending: ") & emailEvent.toString, This'Unchecked_Access, To_Unbounded_String ("onEmailSendRequest"));
        end if;
        to := This.userInterface.getMainEmail;
        email := BasicEmail_Package.Create (emailEvent.getEmailInfo, to);
        EmailQueueFactory_Package.getInstance.offer (EmailInterface_Access (email.getEmail));
   end onEmailSendRequest;

end org.allbinary.logic.communication.smtp.event.modules.event.user.UserEmailEventListenerModule_Package;


