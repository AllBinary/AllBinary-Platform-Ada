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


with org.allbinary.logic.util.cache.AutomaticCacheInterface_Package; use org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package; use org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;
with org.allbinary.logic.util.cache.CacheType_Package; use org.allbinary.logic.util.cache.CacheType_Package;
with org.allbinary.logic.util.cache.CachePolicy_Package; use org.allbinary.logic.util.cache.CachePolicy_Package;
with org.allbinary.logic.util.cache.CachePolicy_Package;
with org.allbinary.logic.util.cache.CacheType_Package;

package body org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package is

   subtype AutomaticCacheInterface_Access is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access;
   function "=" (Left, Right : AutomaticCacheInterface_Access) return Boolean renames org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References."=";
   subtype AutomaticCacheInterface_Access_Array is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access_Array;
   function "=" (Left, Right : AutomaticCacheInterface_Access_Array) return Boolean renames org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References."=";
   subtype AutomaticCacheInterface_Access_Array_Access is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access_Array_Access;
   function "=" (Left, Right : AutomaticCacheInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References."=";
   subtype AutomaticCacheInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AutomaticCacheInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References."=";
   subtype AutomaticCacheInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AutomaticCacheInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References."=";
   subtype CacheableInterfaceFactoryInterface_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access;
   function "=" (Left, Right : CacheableInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References."=";
   subtype CacheableInterfaceFactoryInterface_Access_Array is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : CacheableInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References."=";
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : CacheableInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References."=";
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CacheableInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References."=";
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References."=";
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
   procedure Initialize_Fields (This : in out AutomaticCacheInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AutomaticCacheInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AutomaticCacheInterfaceFactory_Access is
      This : constant AutomaticCacheInterfaceFactory_Access := new AutomaticCacheInterfaceFactory;
   begin
      AutomaticCacheInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class; cacheType_Param : access CacheType_Package.CacheType'Class; cachePolicy_Param : access CachePolicy_Package.CachePolicy'Class) return AutomaticCacheInterface_Access is
      cacheableInterfaceFactoryInterface : constant CacheableInterfaceFactoryInterface_Access := CacheableInterfaceFactoryInterface_Access (cacheableInterfaceFactoryInterface_Param);
      cacheType : constant CacheType_Access := CacheType_Access (cacheType_Param);
      cachePolicy : constant CachePolicy_Access := CachePolicy_Access (cachePolicy_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No such ") & cacheType.toString));
        return null;
   end getInstance;

   procedure getInstance (cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class; cacheType_Param : access CacheType_Package.CacheType'Class; cachePolicy_Param : access CachePolicy_Package.CachePolicy'Class) is
      Java_Result : constant AutomaticCacheInterface_Access := getInstance (cacheableInterfaceFactoryInterface_Param => cacheableInterfaceFactoryInterface_Param, cacheType_Param => cacheType_Param, cachePolicy_Param => cachePolicy_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package;


