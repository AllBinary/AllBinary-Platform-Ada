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


package body org.allbinary.globals.MESSAGES_Package is

   procedure Initialize_Fields (This : in out MESSAGES'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out MESSAGES'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return MESSAGES_Access is
      This : constant MESSAGES_Access := new MESSAGES;
   begin
      MESSAGES_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   CONTACTADMIN := To_Unbounded_String ("Please contact the administrator.");

end org.allbinary.globals.MESSAGES_Package;


