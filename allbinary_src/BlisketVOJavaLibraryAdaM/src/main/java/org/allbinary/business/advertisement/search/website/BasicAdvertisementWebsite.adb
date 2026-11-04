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



package body org.allbinary.business.advertisement.search.website.BasicAdvertisementWebsite_Package is

   procedure Initialize_Fields (This : in out BasicAdvertisementWebsite'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicAdvertisementWebsite'Class; websiteId : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.websiteId := websiteId;
   end Initialize;

   function Create (websiteId : Unbounded_String) return BasicAdvertisementWebsite_Access is
      This : constant BasicAdvertisementWebsite_Access := new BasicAdvertisementWebsite;
   begin
      BasicAdvertisementWebsite_Package.Initialize (This.all, websiteId);
      return This;
   end Create;

   function toString (This : in out BasicAdvertisementWebsite) return Unbounded_String is
   begin
        return This.websiteId;
   end toString;

end org.allbinary.business.advertisement.search.website.BasicAdvertisementWebsite_Package;


