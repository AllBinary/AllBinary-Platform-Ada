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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.communication.smtp.event.EmailEvent_Package; use org.allbinary.logic.communication.smtp.event.EmailEvent_Package;

package body org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package EmailEvent_Package renames Standard.org.allbinary.logic.communication.smtp.event.EmailEvent_Package;
   procedure Initialize_Fields (This : in out UserEmailEventHandler'Class) is
   begin
      null;
      
      This.emailInfo := null;
      This.userEmailEventNameData := null;
   end Initialize_Fields;


   procedure Initialize (This : in out UserEmailEventHandler'Class) is
   begin
      Initialize_Fields (This);
        This.emailVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize;

   function Create return UserEmailEventHandler_Access is
      This : constant UserEmailEventHandler_Access := new UserEmailEventHandler;
   begin
      UserEmailEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure receiveEmailInfo (This : in out UserEmailEventHandler; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; emailInfo_Param : access EmailInfo_Package.EmailInfo'Class) is
      userEmailEventNameData : constant UserEmailEventNameData_Access := UserEmailEventNameData_Access (userEmailEventNameData_Param);
      emailInfo : constant EmailInfo_Access := EmailInfo_Access (emailInfo_Param);
   begin
        This.userEmailEventNameData := userEmailEventNameData;
        This.emailInfo := emailInfo;
        UserEmailEventHandler'Class (This).fireEmailEvent;
   end receiveEmailInfo;

   procedure addListener (This : in out UserEmailEventHandler; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      vector : constant BasicArrayList_Access := BasicArrayList_Access (vector_Param);
      size : Integer;
      userEmailEventListenerInterface : UserEmailEventListenerInterface_Access;
      index : Integer;
   begin
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            userEmailEventListenerInterface := UserEmailEventListenerInterface_Access (vector.get (index));
            UserEmailEventHandler'Class (This).addListener (userEmailEventListenerInterface);
        end loop;
   end addListener;

   procedure addListener (This : in out UserEmailEventHandler; emailEventListenerInterface_Param : access UserEmailEventListenerInterface_Package.UserEmailEventListenerInterface'Class) is
      emailEventListenerInterface : constant UserEmailEventListenerInterface_Access := UserEmailEventListenerInterface_Access (emailEventListenerInterface_Param);
   begin
        This.emailVector.add (Java_Object_Access (emailEventListenerInterface));
   end addListener;

   procedure removeListener (This : in out UserEmailEventHandler; emailEventListenerInterface_Param : access UserEmailEventListenerInterface_Package.UserEmailEventListenerInterface'Class) is
      emailEventListenerInterface : constant UserEmailEventListenerInterface_Access := UserEmailEventListenerInterface_Access (emailEventListenerInterface_Param);
   begin
        This.emailVector.remove (Java_Object_Access (emailEventListenerInterface));
   end removeListener;

   --  throws Exception
   procedure fireEmailEvent (This : in out UserEmailEventHandler) is
      emailEvent : EmailEvent_Access;
      size : Integer;
      emailEventListenerInterface : UserEmailEventListenerInterface_Access;
      index : Integer;
   begin
        emailEvent := EmailEvent_Package.Create (UserEmailEventHandler_Access'(This'Unchecked_Access), This.userEmailEventNameData, This.emailInfo, 0);
        size := This.emailVector.size;
        for index in 0 .. (size) - 1 loop
            emailEventListenerInterface := UserEmailEventListenerInterface_Access (This.emailVector.get (index));
            emailEventListenerInterface.onEmailSendRequest (emailEvent);
        end loop;
   end fireEmailEvent;

end org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;


