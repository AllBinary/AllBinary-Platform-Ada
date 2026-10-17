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


package body org.allbinary.business.init.db.StaticPagesDbInitInfo_Package is

   procedure Initialize_Fields (This : in out StaticPagesDbInitInfo'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out StaticPagesDbInitInfo'Class) is
   begin
        DbInitInfo_Package.Initialize (This, INITFILE, True);
   end Initialize;

   function Create return StaticPagesDbInitInfo_Access is
      This : constant StaticPagesDbInitInfo_Access := new StaticPagesDbInitInfo;
   begin
      StaticPagesDbInitInfo_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out StaticPagesDbInitInfo'Class; read : Boolean) is
   begin
        DbInitInfo_Package.Initialize (This, INITFILE, read);
   end Initialize;

   function Create (read : Boolean) return StaticPagesDbInitInfo_Access is
      This : constant StaticPagesDbInitInfo_Access := new StaticPagesDbInitInfo;
   begin
      StaticPagesDbInitInfo_Package.Initialize (This.all, read);
      return This;
   end Create;

begin
   null;
   INITFILE := To_Unbounded_String ("staticpagesbinitdata.dat");

end org.allbinary.business.init.db.StaticPagesDbInitInfo_Package;


