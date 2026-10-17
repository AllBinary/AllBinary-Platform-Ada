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


package body org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package is

   procedure Initialize_Fields (This : in out UserEmailEventHandler'Class) is
   begin
      null;
      
      This.emailInfo := null;
      This.userEmailEventNameData := null;
   end Initialize_Fields;


   procedure Initialize (This : in out UserEmailEventHandler'Class) is
   begin
      Initialize_Fields (This);
        This.emailVector := BasicArrayListD_Package.Create;
   end Initialize;

   function Create return UserEmailEventHandler_Access is
      This : constant UserEmailEventHandler_Access := new UserEmailEventHandler;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure receiveEmailInfo (This : in out UserEmailEventHandler; userEmailEventNameData : UserEmailEventNameData_Access; emailInfo : EmailInfo_Access) is
   begin
        This.userEmailEventNameData := userEmailEventNameData;
        This.emailInfo := emailInfo;
        This.fireEmailEvent;
   end receiveEmailInfo;

   procedure addListener (This : in out UserEmailEventHandler; vector : BasicArrayList_Access) is
      size : Integer;
      userEmailEventListenerInterface : UserEmailEventListenerInterface_Access;
      index : Integer;
   begin
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            userEmailEventListenerInterface := UserEmailEventListenerInterface_Access (vector.get (index));
            This.addListener (userEmailEventListenerInterface);
        end loop;
   end addListener;

   procedure addListener (This : in out UserEmailEventHandler; emailEventListenerInterface : UserEmailEventListenerInterface_Access) is
   begin
        This.emailVector.add (emailEventListenerInterface);
   end addListener;

   procedure removeListener (This : in out UserEmailEventHandler; emailEventListenerInterface : UserEmailEventListenerInterface_Access) is
   begin
        This.emailVector.remove (emailEventListenerInterface);
   end removeListener;

   --  throws Exception
   procedure fireEmailEvent (This : in out UserEmailEventHandler) is
      emailEvent : EmailEvent_Access;
      size : Integer;
      emailEventListenerInterface : UserEmailEventListenerInterface_Access;
      index : Integer;
   begin
        emailEvent := EmailEvent_Package.Create (This'Unchecked_Access, This.userEmailEventNameData, This.emailInfo, 0);
        size := This.emailVector.size;
        for index in 0 .. (size) - 1 loop
            emailEventListenerInterface := UserEmailEventListenerInterface_Access (This.emailVector.get (index));
            emailEventListenerInterface.onEmailSendRequest (emailEvent);
        end loop;
   end fireEmailEvent;

end org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;


