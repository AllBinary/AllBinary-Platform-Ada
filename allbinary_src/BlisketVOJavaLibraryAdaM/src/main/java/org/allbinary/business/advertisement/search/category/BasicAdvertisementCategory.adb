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


package body org.allbinary.business.advertisement.search.category.BasicAdvertisementCategory_Package is

   procedure Initialize_Fields (This : in out BasicAdvertisementCategory'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicAdvertisementCategory'Class; categoryId : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.categoryId := categoryId;
   end Initialize;

   function Create (categoryId : Unbounded_String) return BasicAdvertisementCategory_Access is
      This : constant BasicAdvertisementCategory_Access := new BasicAdvertisementCategory;
   begin
      Initialize (This.all, categoryId);
      return This;
   end Create;

   function toString (This : in out BasicAdvertisementCategory) return Unbounded_String is
   begin
        return This.categoryId;
   end toString;

   procedure toString (This : in out BasicAdvertisementCategory) is
      Java_Result : constant Unbounded_String := BasicAdvertisementCategory'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.business.advertisement.search.category.BasicAdvertisementCategory_Package;


