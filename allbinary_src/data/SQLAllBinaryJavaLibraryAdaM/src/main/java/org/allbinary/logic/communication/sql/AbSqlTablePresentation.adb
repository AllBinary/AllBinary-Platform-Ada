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


package body org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package is

   procedure Initialize_Fields (This : in out AbSqlTablePresentation'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AbSqlTablePresentation'Class; databaseConnectionInfoInterface : DbConnectionInfo_Access) is
   begin
        AbSqlBasic_Package.Initialize (This, databaseConnectionInfoInterface);
   end Initialize;

   function Create (databaseConnectionInfoInterface : DbConnectionInfo_Access) return AbSqlTablePresentation_Access is
      This : constant AbSqlTablePresentation_Access := new AbSqlTablePresentation;
   begin
      AbSqlTablePresentation_Package.Initialize (This.all, databaseConnectionInfoInterface);
      return This;
   end Create;

end org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package;


