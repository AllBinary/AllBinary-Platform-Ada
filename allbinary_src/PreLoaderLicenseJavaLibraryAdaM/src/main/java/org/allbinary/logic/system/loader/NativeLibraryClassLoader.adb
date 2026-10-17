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


package body org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package is

   procedure Initialize_Fields (This : in out NativeLibraryClassLoader'Class) is
   begin
      null;
      This.message := To_Unbounded_String ("This Class Loader Does Not Load Classes - Only For Loading and Unloading of Native Libraries");
   end Initialize_Fields;


   procedure Initialize (This : in out NativeLibraryClassLoader'Class; parent : ClassLoader_Access) is
   begin
        ClassLoader_Package.Initialize (This, parent);
        Initialize_Fields (This);
   end Initialize;

   function Create (parent : ClassLoader_Access) return NativeLibraryClassLoader_Access is
      This : constant NativeLibraryClassLoader_Access := new NativeLibraryClassLoader;
   begin
      Initialize (This.all, parent);
      return This;
   end Create;

end org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package;


