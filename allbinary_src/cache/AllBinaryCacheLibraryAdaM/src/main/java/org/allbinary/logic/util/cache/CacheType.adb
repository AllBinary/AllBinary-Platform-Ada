-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2007 AllBinary 
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


package body org.allbinary.logic.util.cache.CacheType_Package is

   procedure Initialize_Fields (This : in out CacheType'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out CacheType'Class; vendor : Unbounded_String; type_Id : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.vendor := vendor;
        This.type_Id := type_Id;
   end Initialize;

   function Create (vendor : Unbounded_String; type_Id : Unbounded_String) return CacheType_Access is
      This : constant CacheType_Access := new CacheType;
   begin
      CacheType_Package.Initialize (This.all, vendor, type_Id);
      return This;
   end Create;

   function getVendor (This : in out CacheType) return Unbounded_String is
   begin
        return This.vendor;
   end getVendor;

   function getType (This : in out CacheType) return Unbounded_String is
   begin
        return This.type_Id;
   end getType;

   function toString (This : in out CacheType) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("CacheType: Vendor: "));
        stringBuffer.append (This.getVendor);
        stringBuffer.append (To_Unbounded_String (" Type: "));
        stringBuffer.append (This.getType);
        return stringBuffer.toString;
   end toString;

end org.allbinary.logic.util.cache.CacheType_Package;


