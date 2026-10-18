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



package body org.allbinary.business.init.db.UserDbInitInfo_Package is

   procedure Initialize_Fields (This : in out UserDbInitInfo'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out UserDbInitInfo'Class) is
   begin
        DbInitInfo_Package.Initialize (This, null, False);
   end Initialize;

   function Create return UserDbInitInfo_Access is
      This : constant UserDbInitInfo_Access := new UserDbInitInfo;
   begin
      UserDbInitInfo_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out UserDbInitInfo'Class; read : Boolean) is
   begin
        DbInitInfo_Package.Initialize (This, null, False);
   end Initialize;

   function Create (read : Boolean) return UserDbInitInfo_Access is
      This : constant UserDbInitInfo_Access := new UserDbInitInfo;
   begin
      UserDbInitInfo_Package.Initialize (This.all, read);
      return This;
   end Create;

end org.allbinary.business.init.db.UserDbInitInfo_Package;


