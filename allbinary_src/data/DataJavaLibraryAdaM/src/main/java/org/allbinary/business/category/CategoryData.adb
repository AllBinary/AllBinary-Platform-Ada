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


package body org.allbinary.business.category.CategoryData_Package is

   procedure Initialize_Fields (This : in out CategoryData'Class) is
   begin
      null;
      This.PARENT := To_Unbounded_String ("CATEGORY_PARENT");
      This.NAME := To_Unbounded_String ("CATEGORY_NAME");
      This.PATH := To_Unbounded_String ("CATEGORY_PATH");
      This.LABEL := To_Unbounded_String ("CATEGORY_LABEL");
      This.VIEW := To_Unbounded_String ("CATEGORY_VIEW_CATEGORY");
      This.LEVEL := To_Unbounded_String ("CATEGORY_LEVEL");
      This.REQUEST := To_Unbounded_String ("request");
      This.ROOTCATEGORY := To_Unbounded_String ("Category");
      This.UNCRYPTED_EXTENSION := CommonDataFileStrings_Package.getInstance.UNCRYPTED_EXTENSION;
      This.ENCRYPTED_EXTENSION := CommonDataFileStrings_Package.getInstance.ENCRYPTED_EXTENSION;
   end Initialize_Fields;


   function getInstance return CategoryData_Access is
   begin
        return CategoryData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out CategoryData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CategoryData_Access is
      This : constant CategoryData_Access := new CategoryData;
   begin
      CategoryData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := CategoryData_Package.Create;

end org.allbinary.business.category.CategoryData_Package;


