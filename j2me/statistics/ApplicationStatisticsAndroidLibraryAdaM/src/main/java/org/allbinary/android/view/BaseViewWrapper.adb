-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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



package body org.allbinary.android.view.BaseViewWrapper_Package is

   procedure Initialize_Fields (This : in out BaseViewWrapper'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out BaseViewWrapper'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BaseViewWrapper_Access is
      This : constant BaseViewWrapper_Access := new BaseViewWrapper;
   begin
      BaseViewWrapper_Package.Initialize (This.all);
      return This;
   end Create;


   procedure invalidate (This : in out BaseViewWrapper) is
   begin
        null;
   end invalidate;

   procedure postInvalidate (This : in out BaseViewWrapper) is
   begin
        null;
   end postInvalidate;

begin
   null;
   NULL_VIEW_WRAPPER := BaseViewWrapper_Package.Create;

end org.allbinary.android.view.BaseViewWrapper_Package;


