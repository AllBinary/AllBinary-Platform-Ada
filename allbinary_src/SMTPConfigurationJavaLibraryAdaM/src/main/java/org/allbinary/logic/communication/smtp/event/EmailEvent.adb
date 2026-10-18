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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.logic.communication.smtp.event.EmailEvent_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out EmailEvent'Class) is
   begin
      null;
      
      
      This.attempts := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out EmailEvent'Class; emailEventHandler_Param : access Java_Object'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; emailInfo_Param : access EmailInfo_Package.EmailInfo'Class; attempts : Integer) is
      emailEventHandler : constant Java_Object_Access := Java_Object_Access (emailEventHandler_Param);
      userEmailEventNameData : constant UserEmailEventNameData_Access := UserEmailEventNameData_Access (userEmailEventNameData_Param);
      emailInfo : constant EmailInfo_Access := EmailInfo_Access (emailInfo_Param);
   begin
        EventObject_Package.Initialize (This, emailEventHandler);
        Initialize_Fields (This);
        This.userEmailEventNameData := userEmailEventNameData;
        This.emailInfo := emailInfo;
   end Initialize;

   function Create (emailEventHandler_Param : access Java_Object'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; emailInfo_Param : access EmailInfo_Package.EmailInfo'Class; attempts : Integer) return EmailEvent_Access is
      This : constant EmailEvent_Access := new EmailEvent;
   begin
      EmailEvent_Package.Initialize (This.all, emailEventHandler_Param, userEmailEventNameData_Param, emailInfo_Param, attempts);
      return This;
   end Create;

   function getEmailInfo (This : in out EmailEvent) return EmailInfo_Access is
   begin
        return This.emailInfo;
   end getEmailInfo;

   function getAttempts (This : in out EmailEvent) return Integer is
   begin
        return This.attempts;
   end getAttempts;

   procedure setAttempts (This : in out EmailEvent; attempts : Integer) is
   begin
        This.attempts := attempts;
   end setAttempts;

   function toString (This : in out EmailEvent) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("EmailEvent Log: " & ASCII.LF & ""));
        stringBuffer.append (To_Unbounded_String ("Event Name: "));
        stringBuffer.append (This.userEmailEventNameData.toString);
        stringBuffer.append (EmailEvent'Class (This).getEmailInfo.toString);
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Number of Attempts: "));
        stringBuffer.appendint (EmailEvent'Class (This).getAttempts);
        return stringBuffer.toString;
   end toString;

end org.allbinary.logic.communication.smtp.event.EmailEvent_Package;


