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


with org.allbinary.globals.AppUrlGlobals_Package; use org.allbinary.globals.AppUrlGlobals_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package; use org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package;

package body org.allbinary.servlet.BlisketServletUtil_Package is

   package AppUrlGlobals_Package renames Standard.org.allbinary.globals.AppUrlGlobals_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package WebappClassLoaderInfo_Package renames Standard.org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package;
   procedure Initialize_Fields (This : in out BlisketServletUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out BlisketServletUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BlisketServletUtil_Access is
      This : constant BlisketServletUtil_Access := new BlisketServletUtil;
   begin
      BlisketServletUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return BlisketServletUtil_Access is
   begin
        return BlisketServletUtil_Package.instance;
   end getInstance;

   procedure init (This : in out BlisketServletUtil; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) is
      request : constant HttpServletRequest_Access := HttpServletRequest_Access (request_Param);
      urlGlobals : AppUrlGlobals_Access;
   begin
        urlGlobals := AppUrlGlobals_Package.Create;
        urlGlobals.setWebappPath (request.getServletContext.getRealPath (AbPathData_Package.getInstance.SEPARATOR));
        URLGLOBALS_Package.init (urlGlobals);
        WebappClassLoaderInfo_Package.setLoader (BlisketServletUtil'Class (This).getClass.getClassLoader);
   end init;

begin
   null;
   instance := BlisketServletUtil_Package.Create;

end org.allbinary.servlet.BlisketServletUtil_Package;


