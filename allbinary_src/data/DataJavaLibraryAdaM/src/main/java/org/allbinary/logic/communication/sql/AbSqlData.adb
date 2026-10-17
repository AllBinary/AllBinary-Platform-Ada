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


package body org.allbinary.logic.communication.sql.AbSqlData_Package is

   procedure Initialize_Fields (This : in out AbSqlData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AbSqlData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AbSqlData_Access is
      This : constant AbSqlData_Access := new AbSqlData;
   begin
      Initialize (This.all);
      return This;
   end Create;

begin
   null;
   ANYSINGLECHARACTERMATCH := To_Unbounded_String ("_");
   ANYMULTICHARACTERMATCH := To_Unbounded_String ("%");
   MAXNUM := 19;
   MINSTRING := 1;
   MAXSTRING := 255;
   MAXBLOB := 32000;

end org.allbinary.logic.communication.sql.AbSqlData_Package;


