--  Generated Code Do Not Modify


with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.cache.CacheType_Package; use org.allbinary.logic.util.cache.CacheType_Package;
with org.allbinary.logic.util.cache.CacheType_Package_References;
with org.allbinary.logic.util.cache.CacheType_Package;

package body org.allbinary.logic.util.cache.CacheTypeFactory_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
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
   procedure Initialize_Fields (This : in out CacheTypeFactory'Class) is
   begin
      null;
      This.NO_CACHE := CacheType_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, StringUtil_Package.getInstance.EMPTY_STRING);
      This.CACHE := CacheType_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, StringUtil_Package.getInstance.EMPTY_STRING);
      This.SET := CacheType_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, To_Unbounded_String ("Set"));
      This.CACHE_VECTOR := CacheType_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, StringUtil_Package.getInstance.EMPTY_STRING);
   end Initialize_Fields;

   procedure Initialize (This : in out CacheTypeFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CacheTypeFactory_Access is
      This : constant CacheTypeFactory_Access := new CacheTypeFactory;
   begin
      CacheTypeFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CacheTypeFactory_Access is
   begin
        return CacheTypeFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := CacheTypeFactory_Package.Create;

end org.allbinary.logic.util.cache.CacheTypeFactory_Package;


