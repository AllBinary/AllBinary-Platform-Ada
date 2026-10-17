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


package body org.allbinary.business.init.db.HistoryDbInitInfo_Package is

   procedure Initialize_Fields (This : in out HistoryDbInitInfo'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out HistoryDbInitInfo'Class) is
   begin
        DbInitInfo_Package.Initialize (This, INITFILE, True);
   end Initialize;

   function Create return HistoryDbInitInfo_Access is
      This : constant HistoryDbInitInfo_Access := new HistoryDbInitInfo;
   begin
      HistoryDbInitInfo_Package.Initialize (This.all);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out HistoryDbInitInfo'Class; read : Boolean) is
   begin
        DbInitInfo_Package.Initialize (This, INITFILE, read);
   end Initialize;

   function Create (read : Boolean) return HistoryDbInitInfo_Access is
      This : constant HistoryDbInitInfo_Access := new HistoryDbInitInfo;
   begin
      HistoryDbInitInfo_Package.Initialize (This.all, read);
      return This;
   end Create;

begin
   null;
   INITFILE := To_Unbounded_String ("historydbinitdata.dat");

end org.allbinary.business.init.db.HistoryDbInitInfo_Package;


