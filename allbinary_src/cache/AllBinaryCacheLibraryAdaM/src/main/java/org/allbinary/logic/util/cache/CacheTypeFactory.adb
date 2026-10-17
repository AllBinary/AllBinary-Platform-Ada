--  Generated Code Do Not Modify


package body org.allbinary.logic.util.cache.CacheTypeFactory_Package is

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


