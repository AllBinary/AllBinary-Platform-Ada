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


with org.allbinary.logic.util.cache.CacheInterface_Package; use org.allbinary.logic.util.cache.CacheInterface_Package;
with org.allbinary.logic.util.cache.CacheInterface_Package_References;
with org.allbinary.logic.util.cache.CacheType_Package; use org.allbinary.logic.util.cache.CacheType_Package;
with org.allbinary.logic.util.cache.CacheType_Package_References;
with org.allbinary.logic.util.cache.CachePolicy_Package; use org.allbinary.logic.util.cache.CachePolicy_Package;
with org.allbinary.logic.util.cache.CachePolicy_Package_References;
with org.allbinary.logic.util.cache.CacheInterface_Package;
with org.allbinary.logic.util.cache.CachePolicy_Package;
with org.allbinary.logic.util.cache.CacheType_Package;

package body org.allbinary.logic.util.cache.CacheInterfaceFactory_Package is

   subtype CacheInterface_Access is org.allbinary.logic.util.cache.CacheInterface_Package_References.CacheInterface_Access;
   function "=" (Left, Right : CacheInterface_Access) return Boolean renames org.allbinary.logic.util.cache.CacheInterface_Package_References."=";
   subtype CacheInterface_Access_Array is org.allbinary.logic.util.cache.CacheInterface_Package_References.CacheInterface_Access_Array;
   function "=" (Left, Right : CacheInterface_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CacheInterface_Package_References."=";
   subtype CacheInterface_Access_Array_Access is org.allbinary.logic.util.cache.CacheInterface_Package_References.CacheInterface_Access_Array_Access;
   function "=" (Left, Right : CacheInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CacheInterface_Package_References."=";
   subtype CacheInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.CacheInterface_Package_References.CacheInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CacheInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CacheInterface_Package_References."=";
   subtype CacheInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CacheInterface_Package_References.CacheInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CacheInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CacheInterface_Package_References."=";
   subtype CacheType_Access is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access;
   function "=" (Left, Right : CacheType_Access) return Boolean renames org.allbinary.logic.util.cache.CacheType_Package_References."=";
   subtype CacheType_Access_Array is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access_Array;
   function "=" (Left, Right : CacheType_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CacheType_Package_References."=";
   subtype CacheType_Access_Array_Access is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access_Array_Access;
   function "=" (Left, Right : CacheType_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CacheType_Package_References."=";
   subtype CacheType_Access_Array_Access_Array is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access_Array_Access_Array;
   function "=" (Left, Right : CacheType_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CacheType_Package_References."=";
   subtype CacheType_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CacheType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CacheType_Package_References."=";
   subtype CachePolicy_Access is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access;
   function "=" (Left, Right : CachePolicy_Access) return Boolean renames org.allbinary.logic.util.cache.CachePolicy_Package_References."=";
   subtype CachePolicy_Access_Array is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array;
   function "=" (Left, Right : CachePolicy_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CachePolicy_Package_References."=";
   subtype CachePolicy_Access_Array_Access is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array_Access;
   function "=" (Left, Right : CachePolicy_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CachePolicy_Package_References."=";
   subtype CachePolicy_Access_Array_Access_Array is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array_Access_Array;
   function "=" (Left, Right : CachePolicy_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CachePolicy_Package_References."=";
   subtype CachePolicy_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CachePolicy_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CachePolicy_Package_References."=";
   procedure Initialize_Fields (This : in out CacheInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CacheInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CacheInterfaceFactory_Access is
      This : constant CacheInterfaceFactory_Access := new CacheInterfaceFactory;
   begin
      CacheInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (cacheType_Param : access CacheType_Package.CacheType'Class; cachePolicy_Param : access CachePolicy_Package.CachePolicy'Class) return CacheInterface_Access is
      cacheType : constant CacheType_Access := CacheType_Access (cacheType_Param);
      cachePolicy : constant CachePolicy_Access := CachePolicy_Access (cachePolicy_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No such ") & cacheType.toString));
        return null;
   end getInstance;

   procedure getInstance (cacheType_Param : access CacheType_Package.CacheType'Class; cachePolicy_Param : access CachePolicy_Package.CachePolicy'Class) is
      Java_Result : constant CacheInterface_Access := getInstance (cacheType_Param => cacheType_Param, cachePolicy_Param => cachePolicy_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.util.cache.CacheInterfaceFactory_Package;


