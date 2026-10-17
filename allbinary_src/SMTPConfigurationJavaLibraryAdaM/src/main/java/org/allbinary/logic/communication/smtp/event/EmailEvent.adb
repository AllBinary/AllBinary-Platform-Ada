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


package body org.allbinary.logic.communication.smtp.event.EmailEvent_Package is

   procedure Initialize_Fields (This : in out EmailEvent'Class) is
   begin
      null;
      
      
      This.attempts := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out EmailEvent'Class; emailEventHandler : Java_Object_Access; userEmailEventNameData : UserEmailEventNameData_Access; emailInfo : EmailInfo_Access; attempts : Integer) is
   begin
        EventObject_Package.Initialize (This, emailEventHandler);
        Initialize_Fields (This);
        This.userEmailEventNameData := userEmailEventNameData;
        This.emailInfo := emailInfo;
   end Initialize;

   function Create (emailEventHandler : Java_Object_Access; userEmailEventNameData : UserEmailEventNameData_Access; emailInfo : EmailInfo_Access; attempts : Integer) return EmailEvent_Access is
      This : constant EmailEvent_Access := new EmailEvent;
   begin
      Initialize (This.all, emailEventHandler, userEmailEventNameData, emailInfo, attempts);
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
        stringBuffer.append (This.getEmailInfo.toString);
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Number of Attempts: "));
        stringBuffer.appendint (This.getAttempts);
        return stringBuffer.toString;
   end toString;

   procedure getEmailInfo (This : in out EmailEvent) is
      Java_Result : constant EmailInfo_Access := EmailEvent'Class (This).getEmailInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEmailInfo;

   procedure getAttempts (This : in out EmailEvent) is
      Java_Result : constant Integer := EmailEvent'Class (This).getAttempts;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAttempts;

   procedure toString (This : in out EmailEvent) is
      Java_Result : constant Unbounded_String := EmailEvent'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.logic.communication.smtp.event.EmailEvent_Package;


