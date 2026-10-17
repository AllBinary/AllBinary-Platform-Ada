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


package body org.allbinary.logic.communication.smtp.EmailData_Package is

   procedure Initialize_Fields (This : in out EmailData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out EmailData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return EmailData_Access is
      This : constant EmailData_Access := new EmailData;
   begin
      EmailData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   SERVER := To_Unbounded_String ("EMAIL_SERVER");
   NAME := To_Unbounded_String ("EMAIL_NAME");
   FROM := To_Unbounded_String ("EMAIL_FROM");
   TO := To_Unbounded_String ("EMAIL_TO");
   CC := To_Unbounded_String ("EMAIL_CC");
   BCC := To_Unbounded_String ("EMAIL_BCC");
   SUBJECT := To_Unbounded_String ("EMAIL_SUBJECT");
   CONTENT := To_Unbounded_String ("EMAIL_CONTENT");

end org.allbinary.logic.communication.smtp.EmailData_Package;


