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



package body org.allbinary.business.user.commerce.money.tax.components.TaxData_Package is

   procedure Initialize_Fields (This : in out TaxData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TaxData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TaxData_Access is
      This : constant TaxData_Access := new TaxData;
   begin
      TaxData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   NAME := To_Unbounded_String ("TAX_NAME");
   RATE := To_Unbounded_String ("TAX_RATE");

end org.allbinary.business.user.commerce.money.tax.components.TaxData_Package;


