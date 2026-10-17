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


package body org.allbinary.business.page.PageData_Package is

   procedure Initialize_Fields (This : in out PageData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("PAGE_NAME");
   end Initialize_Fields;


   function getInstance return PageData_Access is
   begin
        return PageData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out PageData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PageData_Access is
      This : constant PageData_Access := new PageData;
   begin
      PageData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := PageData_Package.Create;

end org.allbinary.business.page.PageData_Package;


