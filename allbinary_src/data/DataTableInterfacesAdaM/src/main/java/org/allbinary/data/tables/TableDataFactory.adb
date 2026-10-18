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


with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;

package body org.allbinary.data.tables.TableDataFactory_Package is

   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   procedure Initialize_Fields (This : in out TableDataFactory'Class) is
   begin
      null;
      This.INTEGER_MAX_VALUE_STRING := To_Unbounded_String (Java_Image (Integer'Last));
      This.ZERO_STRING := CommonPhoneStrings_Package.getInstance.ZERO;
   end Initialize_Fields;

   procedure Initialize (This : in out TableDataFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TableDataFactory_Access is
      This : constant TableDataFactory_Access := new TableDataFactory;
   begin
      TableDataFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return TableDataFactory_Access is
   begin
        return TableDataFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := TableDataFactory_Package.Create;

end org.allbinary.data.tables.TableDataFactory_Package;


