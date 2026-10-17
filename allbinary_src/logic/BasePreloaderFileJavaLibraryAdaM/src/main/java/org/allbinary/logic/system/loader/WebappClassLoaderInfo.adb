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


package body org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package is

   procedure Initialize_Fields (This : in out WebappClassLoaderInfo'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out WebappClassLoaderInfo'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return WebappClassLoaderInfo_Access is
      This : constant WebappClassLoaderInfo_Access := new WebappClassLoaderInfo;
   begin
      WebappClassLoaderInfo_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setLoader (classLoader_Param : access ClassLoader'Class) is
      classLoader : ClassLoader_Access := ClassLoader_Access (classLoader_Param);
   begin
        WebappClassLoaderInfo_Package.classLoader := classLoader;
   end setLoader;

   function getLoader return ClassLoader_Access is
   begin
        return ClassLoader_Access (WebappClassLoaderInfo_Package.classLoader);
   end getLoader;

begin
   null;
   classLoader := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package;


