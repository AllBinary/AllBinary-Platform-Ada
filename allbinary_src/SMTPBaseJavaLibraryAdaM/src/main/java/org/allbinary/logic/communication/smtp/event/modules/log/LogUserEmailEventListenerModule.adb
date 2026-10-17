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


package body org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package is

   procedure Initialize_Fields (This : in out LogUserEmailEventListenerModule'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out LogUserEmailEventListenerModule'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return LogUserEmailEventListenerModule_Access is
      This : constant LogUserEmailEventListenerModule_Access := new LogUserEmailEventListenerModule;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure onEmailSendRequest (This : in out LogUserEmailEventListenerModule; userEmailInfoEvent : EmailEvent_Access) is
      message : Unbounded_String;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            message := To_Unbounded_String ("Logging EmailEvent - Temporary Listener for debugging." & ASCII.LF & "" & ASCII.LF & "") & userEmailInfoEvent.toString;
            This.logUtil.putF (message, This'Unchecked_Access, To_Unbounded_String ("onEmailSendRequest"));
        end if;
   end onEmailSendRequest;

end org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package;


