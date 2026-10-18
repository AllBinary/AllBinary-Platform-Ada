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


with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
with org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package; use org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;
with org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package; use org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package;
with org.allbinary.logic.communication.smtp.event.handler.factory.UserEmailEventHandlerSingletons_Package; use org.allbinary.logic.communication.smtp.event.handler.factory.UserEmailEventHandlerSingletons_Package;
with org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package; use org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package;
with org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package; use org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;
with org.allbinary.logic.communication.smtp.info.EmailInfo_Package; use org.allbinary.logic.communication.smtp.info.EmailInfo_Package;

package body org.allbinary.logic.communication.smtp.email.NewPasswordEmail_Package is

   package UserEmailEventNameData_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
   package UserEmailEventHandler_Package renames Standard.org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;
   package AdminUserEmailEventHandlerSingletons_Package renames Standard.org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package;
   package UserEmailEventHandlerSingletons_Package renames Standard.org.allbinary.logic.communication.smtp.event.handler.factory.UserEmailEventHandlerSingletons_Package;
   package AdminEmailInfo_Package renames Standard.org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package;
   package BasicEmailInfo_Package renames Standard.org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;
   package EmailInfo_Package renames Standard.org.allbinary.logic.communication.smtp.info.EmailInfo_Package;
   procedure Initialize_Fields (This : in out NewPasswordEmail'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out NewPasswordEmail'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userInterface_Param : access UserInterface_Package.UserInterface'Class; newPassword : Unbounded_String) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      userInterface : constant UserInterface_Access := UserInterface_Access (userInterface_Param);
   begin
      Initialize_Fields (This);
        This.abeClientInformation := abeClientInformation;
        This.userInterface := userInterface;
        This.newPassword := newPassword;
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userInterface_Param : access UserInterface_Package.UserInterface'Class; newPassword : Unbounded_String) return NewPasswordEmail_Access is
      This : constant NewPasswordEmail_Access := new NewPasswordEmail;
   begin
      NewPasswordEmail_Package.Initialize (This.all, abeClientInformation_Param, userInterface_Param, newPassword);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out NewPasswordEmail) is
   begin
        NewPasswordEmail'Class (This).notifyStoreAdmin;
        NewPasswordEmail'Class (This).notifyUser;
   end process;

   --  throws Exception
   procedure notifyStoreAdmin (This : in out NewPasswordEmail) is
      emailSubject : Unbounded_String;
      emailBody : Unbounded_String;
      basicEmailInfo : BasicEmailInfo_Access;
      emailInfo : EmailInfo_Access;
      adminUserEmailEventHandler : UserEmailEventHandler_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
                This.logUtil.putF (To_Unbounded_String ("notifyStoreAdmin"), NewPasswordEmail_Access'(This'Unchecked_Access), To_Unbounded_String ("notifyStoreAdmin"));
            end if;
            emailSubject := To_Unbounded_String ("New Password For User: ") & Java_Image (This.userInterface.getUserName);
            emailBody := To_Unbounded_String ("New Password: ") & This.newPassword;
            basicEmailInfo := BasicEmailInfo_Access (AdminEmailInfo_Package.Create (emailSubject, emailBody));
            emailInfo := EmailInfo_Package.Create (basicEmailInfo);
            adminUserEmailEventHandler := AdminUserEmailEventHandlerSingletons_Package.getInstance.getInstance (This.abeClientInformation, UserEmailEventNameData_Package.NEWPASSWORD);
            adminUserEmailEventHandler.receiveEmailInfo (UserEmailEventNameData_Package.NEWPASSWORD, emailInfo);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, NewPasswordEmail_Access'(This'Unchecked_Access), To_Unbounded_String ("emailAdmin"), e);
            end if;
                end;
        end;
   end notifyStoreAdmin;

   --  throws Exception
   procedure notifyUser (This : in out NewPasswordEmail) is
      subject : Unbounded_String;
      body_Id : Unbounded_String;
      basicEmailInfo : BasicEmailInfo_Access;
      emailInfo : EmailInfo_Access;
      userEmailEventHandler : UserEmailEventHandler_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
                This.logUtil.putF (To_Unbounded_String ("Email User"), NewPasswordEmail_Access'(This'Unchecked_Access), To_Unbounded_String ("notifyUser()"));
            end if;
            subject := To_Unbounded_String ("New Password");
            body_Id := To_Unbounded_String ("New Password: ") & This.newPassword;
            basicEmailInfo := BasicEmailInfo_Access (AdminEmailInfo_Package.Create (subject, body_Id));
            emailInfo := EmailInfo_Package.Create (basicEmailInfo);
            userEmailEventHandler := UserEmailEventHandlerSingletons_Package.getInstance.getInstance (This.abeClientInformation, UserEmailEventNameData_Package.NEWPASSWORD, This.userInterface);
            userEmailEventHandler.receiveEmailInfo (UserEmailEventNameData_Package.NEWPASSWORD, emailInfo);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, NewPasswordEmail_Access'(This'Unchecked_Access), To_Unbounded_String ("notifyUser"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end notifyUser;

end org.allbinary.logic.communication.smtp.email.NewPasswordEmail_Package;


